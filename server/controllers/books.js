'use strict'

// Controllers

/** Import dao */
const Books = require('../dao/books')


/** Controllers */
module.exports = {
  /**
   * @param {Express.Request} req
   * @param {Express.Response} res 
   */
  getBooks(req, res) {
    res.send('books api test')
    // get all books
  }
}