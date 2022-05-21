const db = require("./database")
/*
const studios = [
    { name: "ID Software", game_id: 2 },
    { name: "3D Realms", game_id: 1 },
    { name: "Hudson Soft", game_id: 3 },
    { name: "Sega", game_id: 5 }
]

db.insert(studios)
    .table("studio").then(data => {
        console.log(data)
    }).catch(err => {
        console.log(err)
    })
*/

db.select(["game.*", "studio.name as studio"])
    .table("game")
    .where("game_id", 5)
    .innerJoin("studio", "game.id", "studio.game_id").then(data => {
        console.log(data)
    }).catch(err => {
        console.log(err)
    })