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
    const name = req.query.name.trim()
    if (!/^[a-zA-Z\s]+$/.test(name)) { // ONLY CHAR AND SPACE
        return res.status(400).send({ error: "SQL INJECTION MI DENIYORSUN EVLAT" });
      }
    const query = `
        SELECT four_letter
        FROM celebs c
        JOIN letter l ON l.celebs_id = c.id
        WHERE name = ?
    `;
    db.query(query, [name], (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.json(result);
        }
    });
});

