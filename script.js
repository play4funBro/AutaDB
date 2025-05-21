const ex = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const app = ex();

const port = 1234;

app.use(cors());

app.listen(port, (req, res) =>{
    console.log("Succes!");
});

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    paswd: '',
    database: '4tpzad'
});

conn.connect((err)=>{
    if(err) throw err;
    console.log('Connected to: ' + conn.config.database);
});

app.get("/", (req,res)=>{
    conn.query('select * from pojazdy', (err, result) =>{
        if(err) throw err;
       res.json(result);
    });
});
