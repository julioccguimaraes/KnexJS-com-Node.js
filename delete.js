const db = require("./database")

db.where({ id: 4 }).table("game").delete().then(data => {
    console.log(data)
}).catch(err => {
    console.log(err)
})