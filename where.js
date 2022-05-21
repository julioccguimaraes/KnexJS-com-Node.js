const db = require("./database")

/*
db.select("*")
    .where({name: "Quake"})
    .where({id: 2})
    .table("game").then(data => {
        console.log(data)
}).catch(err => {
    console.log(err)
})
*/

/*
db.select("*")
    .where({name: "Quake"})
    .orWhere({id: 2})
    .table("game").then(data => {
        console.log(data)
}).catch(err => {
    console.log(err)
})
*/

/*
db.select("*")
    .whereRaw('price > 100 OR name LIKE "Quake"')
    .table("game").then(data => {
        console.log(data)
}).catch(err => {
    console.log(err)
})
*/

db.raw("Select * FROM game").then(data => {
    console.log(data)
}).catch(err => {
    console.log(err)
})