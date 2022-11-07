import express from 'express';
const dotenv = require("dotenv");

dotenv.config();
const app = express();
const port = process.env.PING_LISTEN_PORT || 3000;

app.get('/ping', (req, res) => {
    res.send(req.headers);
})

app.get('*', (req, res) => {
    res.status(404).end()
})

app.listen(port, () => 
    console.log(`Votre serveur tourne sur le port ${port} !`)
)

const url: string = `localhost: ${port}`;