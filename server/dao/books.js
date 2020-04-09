'use strict'

// Books db operations

const DAO = require('./dao')
const dao = new DAO()

/** SQL querries */
const SQL = {
  getAll: `
    START TRANSACTION;
    SELECT * FROM books;
    COMMIT;
    `
}

module.exports = class Books {
  
  getBooks() {
    console.log('controller')
    return dao.connection.promise().query('SELECT 2')
  }

}