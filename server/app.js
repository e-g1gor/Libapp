'use strict'

const PORT = 3000

const express = require('express')
const bodyParser = require('body-parser')
const app = express()



/** Initialize DAO */
const DAO = require('./dao/dao')
const dao = new DAO({
  host:'localhost',
  database: 'mydb',
  user: 'root',
  password: 'password'
})



/** Middleware */
app.use(bodyParser.urlencoded({
  extended: true
}))
app.use(bodyParser.json())



/** Routes */
const books = require('./routes/books')

app.use(express.static('./public'))
app.use('/books', books)
// app.get('/', function (req, res) {
//   res.sendFile(path.join(__dirname + '../web/index.html'))
// })

app.listen(PORT, function () {
    console.log(`App listening on port ${PORT}!`)
  })


module.exports = app
