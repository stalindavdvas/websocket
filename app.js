const express = require('express');
const app = express();
const http = require('http').createServer(app);
const io = require('socket.io')(http);

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

io.on('connection', (socket) => {
    console.log('Usuario conectado');
    socket.emit('message', 'Stalin Vasco');
});

const port = 3000;
http.listen(port, () => {
    console.log(`Servidor escuchando en el puerto ${port}`);
});
