import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class GroupPage extends StatefulWidget {
  final String name;
  const GroupPage({Key? key, required this.name}) : super(key: key);

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  IO.Socket? socket;
  TextEditingController msg = TextEditingController();
  // ignore: non_constant_identifier_names
  @override
  void initState() {
    super.initState();
    connect();
  }

  void connect() {
    socket = IO.io("http://localhost:3000", <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": true,
    });

    socket!.connect();
    socket!.onConnect((_) {
      print('connected to frontend');
      //socket!.emit("message", 'test');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anonymous Group"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: msg,
                    decoration: const InputDecoration(
                      hintText: "Type here....",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    socket!.emit("message", msg.text);
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Never newMethod() => throw UnimplementedError();
}
