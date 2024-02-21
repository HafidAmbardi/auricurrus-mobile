import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late IO.Socket socket;
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    initializeSocket();
  }

  void initializeSocket() {
    socket = IO.io('http://10.0.2.2:3001', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    connectServer();
    receiveMessage();
    debugPrint('hello');
  }

  @override
  Widget build(BuildContext context) {
    // Your UI widgets and layout here
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: Column(
        children: [
          // Your chat UI widgets here
          TextField(
            controller: messageController,
            decoration: InputDecoration(labelText: 'Enter your message'),
          ),
          ElevatedButton(
            onPressed: sendMessage,
            child: Text('Send Message'),
          ),
          // Display messages or chat history here
        ],
      ),
    );
  }

  void sendMessage() {
    String message = messageController.text.trim();
    if (message.isNotEmpty) {
      socket.emit('chat_message', message);
      messageController.clear();
    }
  }

  void receiveMessage() {
    socket.on('response', (data) {
      setState(() {
        messages.add(data['dir']);
      });
      debugPrint(data['dir']);
    });
  }

  void connectServer() {
    socket.connect();
    socket.onConnect((_) {
      debugPrint('connected to server blabla');
    });
    socket.on('connect_error', (data) {
      debugPrint('Error connecting to server: $data');
    });
  }
}
