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
    res.render('Reports', {
    }); //End of res.render
  },
  get_reportId : function(req, res, reportId) {
    res.render('Reports', {
      'reportName':'No reports exist yet'
    }); //End of res.render
  },
}
