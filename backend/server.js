const {createPool} = require('mysql2');
const express = require('express');
const cors = require('cors');
const app = express();
const port = 4000;


app.use(cors())

app.get("/", (req, res) => {
    res.json({message: "Hello World"});
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});


const db = createPool({
    host: 'localhost',
    password: 'db123',
    user: 'root',
    database: 'mbti_schema',
    connectionLimit: 10
});


app.get('/celebs', (req, res) => {
    const name = req.query.name || req.body.name;  
    db.query(`  select four_letter
                from celebs c
                join letter l on l.celebs_id = c.id
                where name= '${name}'`, (err, result) => {
        if(err) {
            console.log(err);
        } else {
            res.json(result);
        }
    });
});

