'use strict'

// Controllers

/** Import dao */
const Books = require('../dao/books')
const books = new Books()

const SQL = {
  all: 'SELECT * from books'
}

/** Controllers */
module.exports = {
  /**
   * @param {Express.Request} req
   * @param {Express.Response} res 
   */
  getBooks(req, res) {
    
    books.getBooks()
    .then( ([rows,fields]) => {
      res.send(rows)
    })
    // get all books
  }
}