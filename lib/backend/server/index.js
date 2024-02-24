import express from 'express';
import { Server } from 'socket.io';

const PORT = process.env.PORT || 3001
const IP = ''
const app = express() 

app.use((req, res, next) => {
    console.log(`Received request: ${req.method} ${req.url}`);
    next();
  });

// console.log('helwf')

const expressServer = app.listen(PORT, IP, () => {
    console.log(`listening on ${PORT}`);
})

const io = new Server(expressServer)

// listening for connections
io.on('connection', (socket) => {
    console.log(`user connected: ${socket.id}`);

    socket.on('chat_message', (message) => {
        console.log(`message received: ${message}`)
        switch (message) {
            case('left') : {
                socket.broadcast.emit('response', { dir : 'left' })
                console.log('sent left')
                break;
            }
            case('right') : {
                socket.broadcast.emit('response', { dir : 'right' })
                console.log('sent right')
            }
            case('honk') : {
                socket.broadcast.emit('response', { dir : 'honk' })
                console.log('sent honk')
            }
        }
    });   
},)