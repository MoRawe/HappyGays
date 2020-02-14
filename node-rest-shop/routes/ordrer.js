const express = require('express');
const router = express.Router();
var mysql = require('mysql');
var js2xmlparser=require("js2xmlparser");
var builder = require('xmlbuilder');
var fs     = require('fs');

// Build XML structure
// router.use(orm.express("mysql://root:@localhost:/happy-gays", {
//   define: function (db, models, next) {
//     models.book = db.define("alcohol", { 
//     Country                        : string,                
//     Freedom                        : short,
//     total_litres_of_pure_alcohol   : float, 
//     LGBT                           : short
//               });
//       next();
//   }
// }));


// Get Country_region, Freedom, alcohol.total_litres_of_pure_alcohol and N(Total LGBT number), JSON format.
router.get('/',(_req,res,next) => {
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "happy-gays"
      });
      con.connect(function(err) {
        if (err) throw err;
        con.query("SELECT `world-happiness`.`Country_region`,`world-happiness`.`Freedom`, alcohol.total_litres_of_pure_alcohol, lgbt.N FROM `world-happiness` JOIN `connection-table` ON `world-happiness`.`Country_region`=`connection-table`.`country-happines` JOIN lgbt ON lgbt.CountryID=`connection-table`.`country-lgbt` JOIN alcohol ON alcohol.country = `connection-table`.`country-alcohol`", function (err, result, fields) {
          if (err) throw err;
          res.status(200).json({
            countries: result
            });
            con.destroy();
        });
      }); 
});

//Get Country_region, Freedom, alcohol.total_litres_of_pure_alcohol and N(Total LGBT number), XML format.
router.get('/xml',(_req,res,next) => {
  var con = mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "",
      database: "happy-gays"
    });
    let sql = "SELECT `world-happiness`.`Country_region`,`world-happiness`.`Freedom`, alcohol.total_litres_of_pure_alcohol, lgbt.N FROM `world-happiness` JOIN `connection-table` ON `world-happiness`.`Country_region`=`connection-table`.`country-happines` JOIN lgbt ON lgbt.CountryID=`connection-table`.`country-lgbt` JOIN alcohol ON alcohol.country = `connection-table`.`country-alcohol`";
    let query = con.query(sql, (err, results) => {
        if (err) {
            console.log(err);
            res.status(404).json({
                countries: "wrong query "
            });
        }
        else if (results.length > 0) {         
            var result1 = js2xmlparser.parse("countries", results);
            return res.send(result1);        
        } else {
            res.status(404).json({
                countries: "No valid entry found "
            })
        }
    });
});

//Get Country_region, Freedom, alcohol.total_litres_of_pure_alcohol and N(Total LGBT number) depending on the country name, JSON format.
router.get('/:countryName', (req,res,next)=>{
    const id = req.params.countryName;
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "happy-gays"
      });
      con.connect(function(err) {
        if (err) throw err;
        con.query("SELECT `world-happiness`.`Country_region`,`world-happiness`.`Freedom`, alcohol.total_litres_of_pure_alcohol, lgbt.N FROM `world-happiness` JOIN `connection-table` ON `world-happiness`.`Country_region`=`connection-table`.`country-happines` JOIN lgbt ON lgbt.CountryID=`connection-table`.`country-lgbt` JOIN alcohol ON alcohol.country = `connection-table`.`country-alcohol` WHERE `world-happiness`.`Country_region` ="+"'"+id+"'", function (err, result, fields) {
          if (err) throw err;
          res.status(200).json({
            countries: result
            });
            con.destroy();
        });
      }); 
});

// Get Country_region, Freedom, alcohol.total_litres_of_pure_alcohol and N(Total LGBT number) depending on the country name, XML format.
router.get('/xml/:countryName', (req,res,next)=>{
  const id = req.params.countryName;
  var con = mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "",
      database: "happy-gays"
    });
    let sql = "SELECT `world-happiness`.`Country_region`,`world-happiness`.`Freedom`, alcohol.total_litres_of_pure_alcohol, lgbt.N FROM `world-happiness` JOIN `connection-table` ON `world-happiness`.`Country_region`=`connection-table`.`country-happines` JOIN lgbt ON lgbt.CountryID=`connection-table`.`country-lgbt` JOIN alcohol ON alcohol.country = `connection-table`.`country-alcohol` WHERE `world-happiness`.`Country_region` ="+"'"+id+"'";
    let query = con.query(sql, (err, results) => {
        if (err) {
            console.log(err);
            res.status(404).json({
                countries: "wrong query "
            });
        }
        else if (results.length > 0) {         
            var result1 = js2xmlparser.parse("countries", results);
            return res.send(result1);        
        } else {
            res.status(404).json({
                countries: "No valid entry found "
            })
        }
    });
});

// This method should build XML data and not parsing it from JSON. Unfortunately, I couldn't make it work.
//Get Country_region, Freedom, alcohol.total_litres_of_pure_alcohol and N(Total LGBT number), XML format. 
router.get('/xmlB', (req, res, next) => {
    var con = mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "",
      database: "happy-gays"
    });
    let sql = "SELECT `world-happiness`.`Country_region`,`world-happiness`.`Freedom`, alcohol.total_litres_of_pure_alcohol, lgbt.N FROM `world-happiness` JOIN `connection-table` ON `world-happiness`.`Country_region`=`connection-table`.`country-happines` JOIN lgbt ON lgbt.CountryID=`connection-table`.`country-lgbt` JOIN alcohol ON alcohol.country = `connection-table`.`country-alcohol`";
    var xml = builder.create('countries');  
      var result = req.models.book.find({
       }, function(error, countries){
         if(error) throw error;
             for(var i=0; i< countries.length; i++){
                 xml.ele('countries')
                 .ele('Country', countries[i]['Country']).up()
                 .ele('Freedom', countries[i]['Freedom']).up()
                 .ele('total_litres_of_pure_alcohol', countries[i]['total_litres_of_pure_alcohol']).up()
                 .ele('LGBT', countries[i]['LGBT']).end();
             }
              
             var xmldoc = xml.toString({ pretty: true }); 
             let query = con.query(sql, (err, results) => {
              if (results.length > 0) {         
                return res.send(xmldoc);  
             }
          });
    });
  });


module.exports = router;