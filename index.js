const express = require('express');
const path = require('path');
const db = require('./database/query.js');
const compression = require('compression');

const app = express();

const PORT = process.env.PORT || 5100;

app.use(compression());
app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, 'client', 'dist')));

// get searched cat
app.get('/about/cat', (req, res) => {
  db.getCats(req.query.catName, (error, results) => {
    if (error) {
      console.error('error getting query', error);
      res.sendStatus(404);
    } else {
      res.status(200).send(results);
    }
  });
});

// get searched cat questions and answers
app.get('/about/questions', (req, res) => {
  db.getQuestions(req.query.catName, (error, results) => {
    if (error) {
      console.error('error getting query', error);
      res.sendStatus(404);
    } else {
      res.status(200).send(results);
    }
  });
});

// app.get('/about/answers', (req, res) => {
//   // console.log('get', req.query.catName)
//   db.getAnswers(req.query.catName, (error, results) => {
//     if (error) {
//       console.error('error getting query', error);
//       res.send(error, null);
//     } else {
//       // console.log('query results:', results);
//       res.status(200).send(results);
//     }
//   });
// });

app.post('/about/question', (req, res) => {
  db.addQuestion(req.body.question, (error, results) => {
    if (error) {
      console.error(error);
      res.sendStatus(404);
    } else {
      res.status(200).send('sent');
    }
  });
});

app.post('/about/answer', (req, res) => {
  db.addAnswer(req.body.answer, (error, results) => {
    if (error) {
      console.error(error);
      res.sendStatus(404);
    } else {
      res.status(200).send('sent');
    }
  });
});


app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
