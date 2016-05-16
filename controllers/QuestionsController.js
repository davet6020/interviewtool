var mysql = require('mysql2');
var connection = mysql.createConnection({
  host     : process.env.DB_HOST,
  user     : process.env.DB_USER,
  password : process.env.DB_PASS,
  database : process.env.DB_DATABASE
});

var Util = require('../utils/Utils');

module.exports = {

  get_index : function(req, res) {
    res.render('QuestionsIndex', {
      'title':'Questions Index'
    });
  },
  get_questionNumber : function(req, res, questionNumber) {
    var sql = `select secondsAllowed, comment, question, questionType, answer1, answer2, answer3, answer4, answer5 
                from questions 
                where id=?
                `;
    connection.query(sql, [questionNumber], function(err, rows, columns)  {
        if(err) {
            console.log('error: ', err);
        } else {
            res.render('QuestionsRead', {
              'title':'Quiz',
              'rows':rows
            }); //End of res.render
        }
    }); //End of connection.query
  },
}
