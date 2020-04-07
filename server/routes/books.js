'use strict'

// Routes for books API

const express = require('express')
const controller = require('../controllers/books')

const router = express.Router()

/** Get all books */
router.get('/', controller.getBooks)

module.exports = router