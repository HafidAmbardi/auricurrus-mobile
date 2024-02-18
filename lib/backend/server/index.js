import express from 'express';
import { Server } from 'socket.io';

const PORT = process.env.PORT || 3001
const app = express() 

app.use((req, res, next) => {
    console.log(`Received request: ${req.method} ${req.url}`);
    next();
  });

// console.log('helwf')

const expressServer = app.listen(PORT, () => {
    console.log(`listening on ${PORT}`);
})

const io = new Server(expressServer)

// listening for connections
io.on('connection', (socket) => {
    console.log(`user connected: ${socket.id}`);

    socket.on('chat_message', (message) => {
        console.log(`message received: ${message}`)
        if (message == '1'){
            socket.broadcast.emit('response', { dir : 'left ' })
            console.log('sent left')
        }

        else if (message == '2'){
            socket.broadcast.emit('response', { dir : 'right ' })
            console.log('sent right')
        }
        
        else {
            socket.broadcast.emit('response', { dir : 'command not found' })
            console.log('sent command not found')
        }
    });   
})

