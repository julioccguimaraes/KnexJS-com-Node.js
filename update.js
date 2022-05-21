const db = require("./database")

db.where({ id: 5 })
    .table("game")
    .update({price: 41}).then(data => {
        console.log(data)
    }).catch(err => {
        console,log(err)
    })