const mysql = require('mysql'); 


const index = (req, res) => {

  const config = {
    host     : 'database',
    user     : 'root',
    password : 'root',
    database : 'db'
  }; 

  var connection = mysql.createConnection(config);
  
  connection.connect();

  connection.query('SELECT * from people', function (error, results, fields) {
    if (error) throw error;
    
    let peopleList = '<ul>'; 
    results.map(person => { 
      peopleList += `<li>${person.name}</li>`;
    }); 
    peopleList += '</ul>'

    connection.end();

    res.send('<h1>Full Cycle Rocks!</h1>' + peopleList);
  });
}

module.exports = {
  index
}