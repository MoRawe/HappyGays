const express = require('express');
const router = express.Router();

var mysql = require('mysql');
var js2xmlparser=require("js2xmlparser");



//Get records from alcohol table, json format
router.get('/', (req, res, next) => {
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  con.connect(function (err) {
    if (err) throw err;
    con.query("SELECT * FROM alcohol", function (err, result, fields) {
      if (err) throw err;
      res.status(200).json({
        countries: result,
      });
      con.destroy();
    });
  });
});


//Get records from alcohol table, XML format
router.get('/xml', (req, res, next) => {
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });

    let sql = "SELECT * FROM alcohol";
    let query = con.query(sql, (err, results) => {
        if (err) {
            console.log(err);
            res.status(404).json({
                countries: "wrong query "
            });
        }
        else if (results.length > 0) {         
            var result = js2xmlparser.parse("countries", results);
            return res.send(result);        
        } else {
            res.status(404).json({
                countries: "No valid entry found "
            })
        }
    });
});

//Post record to alcohol table, json format
router.post('/', (req, res, next) => {
  const product = {
    country: req.body.country,
    beer: req.body.beer,
    spirit: req.body.spirit,
    wine: req.body.wine,
    total: req.body.total
  }
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
    var sql = "INSERT INTO alcohol (country, beer_servings, spirit_servings, wine_servings, total_litres_of_pure_alcohol) VALUES('" + product.country + "','" + product.beer + "','" + product.spirit + "','" + product.wine + "','"+product.total+"')";
    con.query(sql, function (err, result) {
      if (err) throw err;
      console.log("One record added");
      con.destroy();
    });
  });
});

//Post record to alcohol table, XML format
router.post('/xml', (req, res, next) => {
  const product = {
    country: req.body.countries.country,
    beer: req.body.countries.beer_servings,
    spirit: req.body.countries.spirit_servings,
    wine: req.body.countries.wine_servings,
    total: req.body.countries.total_litres_of_pure_alcohol
  }
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  var sql="INSERT INTO alcohol (country, beer_servings, spirit_servings, wine_servings, total_litres_of_pure_alcohol) VALUES('" + product.country + "','" + product.beer + "','" + product.spirit + "','" + product.wine + "','"+product.total+"')";
    con.query(sql,function(err,result){
      if(err)throw err;
      return res.send(result).end();
    });
});

//Get record from alcohol table depending on the country name, json format
router.get('/:CountryID', (req, res, next) => {
  const id = req.params.CountryID;
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  con.connect(function (err) {
    if (err) throw err;
    con.query("SELECT * FROM alcohol INNER JOIN `connection-table` ON alcohol.country = `connection-table`.`country-alcohol` WHERE alcohol.country=" + "'" + id + "'", function (err, result, fields) {
      if (err) throw err;
      res.status(200).json({
        countries: result
      });
      con.destroy();
    });
  });
});

//Get record from alcohol table depending on the country name, XML format
router.get('/xml/:CountryID', (req, res, next) => {
  const id = req.params.CountryID;
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  let sql = "SELECT * FROM alcohol INNER JOIN `connection-table` ON alcohol.country = `connection-table`.`country-alcohol` WHERE alcohol.country=" + "'" + id+ "'";
    let query = con.query(sql, (err, results) => {
        if (err) {
            console.log(err);
            res.status(404).json({
                countries: "wrong query "
            });
        }
        else if (results.length > 0) {         
            var result = js2xmlparser.parse("countries", results);
            return res.send(result);        
        } else {
            res.status(404).json({
                countries: "No valid entry found "
            })
        }
    });
});

//Delete record from alcohol table depending on the country name, json format
router.delete('/:CountryID', (req, res, next) => {
  const id = req.params.CountryID;
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  con.connect(function (err) {
    if (err) throw err;
    con.query("DELETE FROM alcohol WHERE alcohol.country =" +"'" + id + "'", function (err, result, fields) {
      if (err) throw err;
      res.status(200).json({
        countries: result
      });
      con.destroy();
    });
  });
});

//Delete record from alcohol table depending on the country name, XML format
router.delete('/xml/:CountryID', (req, res, next) => {
  const id = req.params.CountryID;
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  })
  con.query("DELETE FROM alcohol WHERE alcohol.country =" + "'" + id + "'", function (err, result, fields) {
      if (err) throw err;
      return res.send(result);  
  });
});

//Update record from alcohol table depending on the country name, json format
router.patch('/:CountryID', (req, res, next) => {
  const id = req.params.CountryID;
  const product = {
    beer: req.body.beer,
    spirit: req.body.spirit,
    wine: req.body.wine,
    total: req.body.total
  }
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  });
  con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
    var sql = "UPDATE alcohol SET beer_servings = '"+product.beer+"', spirit_servings = '"+product.spirit+"', wine_servings = '"+product.wine+"', total_litres_of_pure_alcohol ='"+product.total+"' WHERE alcohol.country=" + "'" + id + "'"
    con.query(sql, function (err, result) {
      if (err) throw err;
      console.log("record Updated");
      con.destroy();
    });
  });
});

//Update record from alcohol table depending on the country name, XML format
router.patch('/xml/:CountryID', (req, res, next) => {
  const id = req.params.CountryID;
  console.log(req.body.countries.beer_servings);
  const product = {
    beer: req.body.countries.beer_servings,
    spirit: req.body.countries.spirit_servings,
    wine: req.body.countries.wine_servings,
    total: req.body.countries.total_litres_of_pure_alcohol
  }
  
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "happy-gays"
  }); 
    var sql = "UPDATE alcohol SET beer_servings = '"+product.beer+"', spirit_servings = '"+product.spirit+"', wine_servings = '"+product.wine+"', total_litres_of_pure_alcohol ='"+product.total+"' WHERE alcohol.country=" + "'" + id + "'"
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("record Updated");
        return res.send(result);  
            
    });
});


module.exports = router;