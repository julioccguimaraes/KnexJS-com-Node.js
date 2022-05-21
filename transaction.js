const db = require("./database")

async function transaction() {
    try {
        await db.transaction(async trans => {
           await db.insert({name: "Outro studio"}).into("studio")
           await db.insert({name: "Outro jogo", price: "80"}).into("game")
        })
    } catch (err) {
        console.log(err)
    }
}

transaction()