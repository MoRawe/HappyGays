const express = require('express');
const app = express();
const morgan = require('morgan');
const bodyParser = require('body-parser');

const productRoutes = require('./routes/products');
const orderRoutes = require('./routes/ordrer');

app.use(morgan('dev'));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());


//Routes handel request.
app.use('/products', productRoutes);
app.use('/ordrer', orderRoutes);

app.use((req, res, next) => {
    const error = new Error('not found!');
    error.status(404);
    next(error)
})

//Well handel all errors in the app
app.use((error, req, res, next) => {
    res.status(error.status || 500);
    res.json({
        error: {
            message: error.message
        }
    });
});

module.exports = app;