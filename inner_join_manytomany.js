const db = require("./database")

db.select([
    "studio.name AS studio",
    "game.name AS game_name"
])
    .table("game_studio")
    .innerJoin("game", "game.id", "game_studio.game_id")
    .innerJoin("studio", "studio.id", "game_studio.studio_id")
    //.where("game.id", 2)
    .then(result => {
        console.log(result)

    }).catch(err => {
        console.log(err)
    }) 