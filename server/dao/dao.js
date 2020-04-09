'use strict'

// Data access object

const mysql = require('mysql2')


/** db connection handler */
let connection


/** DAO implementation */
module.exports = class DAO {
  /**
   * 
   * @param {*} connect database connection settings. If provided, new conection will be created
   */
  constructor(connect) {
    // set connection
    if (connect)
      connection = mysql.createConnection(connect)
    //Test 
    connection.promise().query("SELECT 1")
      .then( ([rows,fields]) => {
        console.log(rows)
      })
     
  }

  /**
   * @returns {mysql.Connection} established database conection
   */
  get connection() {return connection}
}