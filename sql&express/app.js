//initiate express and application
const express = require('express')
const app = express();

//proccess environment variables
require('dotenv').config();

//Instantiate database here
// To connect to a SQLite3 database, you can use the sqlite3 package. Install it by running npm install sqlite3 in your Terminal.
//...
const sqlite3 = require('sqlite3');
const db = new sqlite3.Database(
  process.env.data_source,
  sqlite3.OPEN_READWRITE
);
//express using json
app.use(express.json());

//Routes will go here
//..
app.get('/trees', (req, res, next) => {
  // route handling goes here
  const sql = 'SELECT * FROM trees';
  const params = [];

  db.all(sql, params, (err, rows) => {
      // response handling goes here
      res.json(rows);
  });
});

//BEST PRACTICES
app.get('/trees', (req, res, next) => {
  const sql = 'SELECT id, name FROM trees';
  const params = [];

  db.all(sql, params, (err, rows) => {
      if (err) {
          next(err);
      } else {
          res.json(rows);
      }
  });
});

// Here's a complete example with the route handler, SQL statement, params, database query and response handling.

app.get('/trees/:id', (req, res, next) => {
    const sql = 'SELECT * FROM trees WHERE id = ?';
    const params = [req.params.id];

    db.get(sql, params, (err, row) => {
        if (err) {
          next(err);
        } else {
          res.json(row);
        }
    });
});

// Using run on non-SELECT SQL statements
// Running other SQL statements, like INSERT, DELETE and UPDATE follow a similar pattern:

// Constant for the SQL statement, with ? where dynamic values need to go
// Constant array for the params to substitute for each ? in the same order as the ?'s in the SQL constant
// Calling the appropriate database function with the SQL statement, params, and result handler function
// For non-SELECT statements, db.run() is the database function to use. The response handler function will pass through an error (err) if something goes wrong.

// Here's an example - notice the 4 question marks (?) match the 4 params.

app.post('/trees', (req, res, next) => {
  //SQL INSERT
    const sql = `
        INSERT INTO trees (tree, location, height_ft, ground_circumference_ft)
        VALUES (?, ?, ?, ?);
    `;
    const params = [
        req.body.name,
        req.body.location,
        req.body.height,
        req.body.size
    ];

    //sql query new row
    const sqlLast = 'SELECT * FROM colors ORDER BY id DESC LIMIT 1';
    // Call database to INSERT and, if successful, return new row
    db.run(sql, params, (err) => {
        if (err) {
            next(err);
        } else {
            // res.json({
            //     message: 'success'
            // });

            //best practice returning new row
            db.get(sqlLast, [], (err, row) => {
                res.json(row);
            });
        }
    });
});


// Set port and listen for incoming requests
const port = 5000;
app.listen(port, () => console.log('server is listening on port', port));
