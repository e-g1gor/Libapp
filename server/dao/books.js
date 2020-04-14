'use strict'

// Books db operations

const DAO = require('./dao')

/** SQL querries */
const SQL = {
  getAll: 'SELECT * FROM books',

  getByLang(lang) {
    return [`
    SELECT b.idbooks as id, IFNULL(i.name,b.name) as name
    FROM books b 
    left join i18n i
    on i.bookid=b.idbooks AND langid=?;
    `,[lang]]
  }
}

module.exports = class Books extends DAO {

  static async getBooks() {
    /** Get all books from database */
    let [rez] = await DAO.query(SQL.getAll)
      .catch(err => { throw [500, err.toString()] })
    return rez
  }

  static async getByLang(lang) {
    // /** Check empty name */
    if (lang===undefined)
      throw [400, { errors: ["Error: Language not selected"] }]
    let [rez] = await DAO.query(...SQL.getByLang(lang))
      .catch(err => { throw [500, err.toString()] })

    return rez
  }
}