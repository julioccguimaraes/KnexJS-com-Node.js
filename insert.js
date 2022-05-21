const db = require("./database")

const gameData = [
    {
        name: "Bomberman",
        price: 30.5
    },
    {
        name: "Quake 2",
        price: 50
    }
]

//const query = db.insert(data).into("game")
//console.log(query.toQuery())

db.insert(gameData).into("game").then(data => {
    console.log(data)
}).catch(err => {
    console.log(err)
})
