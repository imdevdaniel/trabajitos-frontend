import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final messages = [
    {
      "transmitter": true,
      "receiver": false,
      "type": "text",
      "content": "Mensaje enviado por abisai pero es mas grande que el card",
      "created_at": "15:21:28",
      "viewed": "15:22:39",
    },
    {
      "transmitter": false,
      "receiver": true,
      "type": "text",
      "content": "Respúesta por parte del usuario",
      "created_at": "15:24:41",
      "viewed": "15:24:50",
    },
    {
      "transmitter": false,
      "receiver": true,
      "type": "text",
      "content": "Otro mensaje por parte del usuario",
      "created_at": "15:25:14",
      "viewed": "",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('José (Electricista)')),
      body: ListView(
        children: _crearMensajes(),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              IconButton(icon: Icon(Icons.location_on), onPressed: () {
                print('Enviar ubicacion....');
              }),
              TextField(),
              IconButton(icon: Icon(Icons.send), onPressed: () {
                print('Enviar mensaje....');
              })
            ]),
          ),
          color: Colors.blueGrey),
    );
  }

  List<Widget> _crearMensajes() {
    return messages.map((var opt) {
      return Column(
        crossAxisAlignment: (opt['transmitter'])
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: <Widget>[
          Card(
            color: (opt['transmitter']) ? Colors.lightGreen : Colors.white70,
            child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                    width: 350,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Text(opt['content'], style: TextStyle(fontSize: 16)),
                        Row(
                            mainAxisAlignment: (opt['transmitter'])
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(opt['content'],
                                    style: TextStyle(fontSize: 16),
                                    maxLines: 8),
                              )
                            ]),
                        Row(
                            mainAxisAlignment: (opt['transmitter'])
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                            children: <Widget>[
                              Text(opt['viewed'],
                                  style: TextStyle(fontSize: 12)),
                              (!opt['transmitter'] && (opt['viewed']) != '')
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.cyan,
                                      size: 18,
                                    )
                                  : Icon(null),
                            ]),
                      ],
                    ))),
          ),
        ],
      );
    }).toList();
  }
}
