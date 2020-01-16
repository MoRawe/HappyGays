const express = require('express');
const router = express.Router();
var mysql = require('mysql');

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
            message: result
            });
            con.destroy();
        });
      }); 
});


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
        con.query("SELECT `world-happiness`.`Country_region`,`world-happiness`.`Freedom`, alcohol.total_litres_of_pure_alcohol, lgbt.* FROM `world-happiness` JOIN `connection-table` ON `world-happiness`.`Country_region`=`connection-table`.`country-happines` JOIN lgbt ON lgbt.CountryID=`connection-table`.`country-lgbt` JOIN alcohol ON alcohol.country = `connection-table`.`country-alcohol` WHERE `world-happiness`.`Country_region` ="+"'"+id+"'", function (err, result, fields) {
          if (err) throw err;
          res.status(200).json({
            message: result
            });
            con.destroy();
        });
      }); 
    
});



module.exports = router;