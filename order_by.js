const db = require("./database")

db.select()
    .table("game")
    .orderBy("price", "asc").then(data => {
        console.log(data)
    }).catch(err => {
        console.log(err)
    })