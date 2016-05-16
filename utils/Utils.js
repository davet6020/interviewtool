var mysql = require('mysql2');
var connection = mysql.createConnection({
  host     : process.env.DB_HOST,
  user     : process.env.DB_USER,
  password : process.env.DB_PASS,
  database : process.env.DB_DATABASE
});


/**
 * Get a specific report from the reports table based on user request.
 */
exports.getReport = function(res, req, done) {
  var sql = `select * from reports
              where id = 1
            `;
  
  connection.query(sql, function(Err, rows, columns)  {
    if(Err) {
      console.log('Error: ', Err);
    }

    done(rows);
  });
} //End getSelectDepartments
