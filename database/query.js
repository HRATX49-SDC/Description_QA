const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);
connection.connect((error) => {
  if (error) {
    console.log('error connection to database', error);
  } else {
    console.log('connected to database');
  }
});

const getCats = function(cat, callback) {
  connection.query('select cID, catName, age, livesLeft, sex, size, dogFriend, in_out, itemNum, category from cats c inner join specifications s on (s.catID=cID) inner join categories ct on (ct.ID=c.categoryID) where c.catName=(?)', cat, function(error, results) {
    if (error) {
      console.log('error from getCats sql', error);
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};

const getQuestions = function(cat, callback) {
  connection.query('select cID, qID, question, dateAdded, qUser, answer, aUser, anwDateAdded from cats c left join questions q on (q.catID=cID) left join answers a on (a.questionID=qID) where c.catName=(?)', cat, function(error, results) {
    if (error) {
      console.log('error from getQuestions sql', error);
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};

// const getAnswers = function(cat, callback) {
//   connection.query('select cID, aID, qID, answer, aUser from cats c left join questions q on (q.catID=cID) left join answers a on (a.questionID=qID) where c.catName=(?)', cat, function(error, results) {
//     if (error) {
//       console.log('error from getAnswers sql', error);
//       callback(error, null);
//     } else {
//       callback(null, results);
//     }
//   });
// };

const addQuestion = function(question, callback) {
  connection.query('insert into questions (catID, question, qUser, dateAdded) VALUES (?, ?, ?, ?)', question, function(error, results) {
    if (error) {
      console.log('error addQuestion sql', error);
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};

const addAnswer = function(answer, callback) {
  connection.query('insert into answers (questionID, answer, aUser, anwDateAdded) VALUES (?, ?, ?, ?)', answer, function(error, results) {
    if (error) {
      console.log('error addAnswer sql', error);
      callback(error, null);
    } else {
      callback(null, results);
    }
  });
};



module.exports = {
  getCats, getQuestions, addQuestion, addAnswer
};
