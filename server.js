require('dotenv').config();
const express = require('express');
const db = require('./dbConn.js');

const port = process.env.PORT || 80;
const app = express();

app.set('view engine', 'ejs');

// middleware
app.use(express.urlencoded());
app.use(express.json());
app.use(express.static('public'));

app.get('/', async (req, res) => {
    let topics = await db.query('select * from topics');
    let subtopics = await db.query('select * from subtopics');
    res.render('pages/home', {
        topics,
        subtopics
    });
})

app.get('/item/:subtopicid', async (req, res) => {
    let items = await db.query('select * from items where SubTopicId = ' + req.params.subtopicid)
    res.render('pages/item', {
        items
    });
})

app.listen(port, () => console.log('Topics app is listening on port ' + port));