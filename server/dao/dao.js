'use strict'

// Data access object

const mysql = require('mysql2')


let connection

/** DAO implementation */
module.exports = class DAO {
  /**
   * Connect to database
   * @param {*} connect database connection settings. If provided, new conection will be created
   */
  constructor(connect) {
    // set connection
    if (connect)
      connection = mysql.createConnection(connect)
  }

  /**
   * Run SQL query
   * @param {string|string[]} sql SQL query to perform
   * @returns {mysql.} established database conection
   */
  static query() {
      return connection.promise().query(...arguments)
  }
}