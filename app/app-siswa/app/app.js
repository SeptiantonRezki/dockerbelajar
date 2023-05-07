const express = require('express')
const app = express()
const mysql = require('mysql');



app.get('/', function (req, res) {
    try {
        // let connection = 
        mysql.createConnection({
            host: '127.0.0.1',
            port: '3306',
            user: 'root',
            password: 'root',
            // database: 'siswa'
        });
        // connection.query('SELECT * from siswa.siswa_table', function (error, results, fields) {
        //     console.log('MASUK SINI')
        //     console.log(results);
        // });
    } catch (error) {
        console.log('Something wrong')
    }

    console.log('hallo docker')
    res.send('Hello World')
})

app.listen(3000)