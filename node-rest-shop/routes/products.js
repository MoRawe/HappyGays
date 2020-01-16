const express = require('express');
const router = express.Router();

var mysql = require('mysql');


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
        message: result,
      });
      con.destroy();
    });
  });

});

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
      console.log("1 record inserted");
      con.destroy();
    });
  });
});

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
        message: result
      });
      con.destroy();
    });
  });
});

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
    con.query("DELETE FROM alcohol WHERE alcohol.country =" + id, function (err, result, fields) {
      if (err) throw err;
      res.status(200).json({
        message: result
      });
      con.destroy();
    });
  });
});

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


module.exports = router;