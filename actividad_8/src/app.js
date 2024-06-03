//App de Express para la gestión de las rutas
const express = require('express');
const fs = require('node:fs/promises')

//Creación de la APP
const app = express();
app.use(express.json())


//Rutas
app.use('/api', require('./routes/api'));

//Middleware error
app.use((err, req, res, next) =>{
    res.status(500).json({error: err.massage});
})


module.exports = app; 