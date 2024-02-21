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
        // if (message == 'L'){
        //     socket.broadcast.emit('response', { dir : 'left ' })
        //     console.log('sent left')
        // }

        // else if (message == 'R'){
        //     socket.broadcast.emit('response', { dir : 'right ' })
        //     console.log('sent right')
        // }
        
        // else if ()
        
        // else {
        //     socket.broadcast.emit('response', { dir : 'command not found' })
        //     console.log('sent command not found')
        // }
    });   
})

