const express = require('express');
const app = express();
const morgan = require('morgan');
const bodyParser = require('body-parser');
require('body-parser-xml')(bodyParser);


const productRoutes = require('./routes/products');
const orderRoutes = require('./routes/ordrer');

app.use(morgan('dev'));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(bodyParser.xml({
    limit: '1MB',   // Reject payload bigger than 1 MB
    xmlParseOptions: {
      normalize: true,     // Trim whitespace inside text nodes
      normalizeTags: true, // Transform tags to lowercase
      explicitArray: false // Only put nodes in array if >1
    }
  }));


//Routes handel request.
app.use('/products', productRoutes);
app.use('/ordrer', orderRoutes);

app.use((req, res, next) => {
    const error = new Error('not found!');
    error.status(404);
    next(error)
})

// handeling errors in the app
app.use((error, req, res, next) => {
    res.status(error.status || 500);
    res.json({
        error: {
            message: error.message
        }
    });
});

module.exports = app;