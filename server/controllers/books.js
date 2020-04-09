'use strict'

// Controllers

/** Import dao */
const Books = require('../dao/books')


/** Controllers */
module.exports = {
  /**
   * Get all Books
   * @param {Express.Request} req
   * @param {Express.Response} res 
   */
  getBooks(req, res) {
    // Read from database
    Books.getBooks()    
      .then(rez => res.status(201).json(rez))
      .catch(err => res.status(err[0]).json(err[1]))
  },
  /**
   * Get all Books
   * @param {Express.Request} req
   * @param {Express.Response} res 
   */
  getByLang(req, res) {
    // Read from database
    Books.getByLang(req.params.lang)    
      .then(rez => res.status(201).json(rez))
      .catch(err => res.status(err[0]).json(err[1]))
  }
}