const db = require("./database")

/*
//db.select("*").table("game").then(data => {
db.select(["id", "price"]).table("game").then(data => {
    console.log(data)
}).catch(err => {
    console.log(err)
})
*/

db.insert({name: "Sonic", price: 20.5}).into("game").then(data => {
    db.select("*").table("game").then(data => {
        console.log(data)
    }).catch(err => {
        console.log(err)
    })
}).catch(err => {
    console.log(err)
})
