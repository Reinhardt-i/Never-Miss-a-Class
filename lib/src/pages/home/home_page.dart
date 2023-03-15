import 'package:flutter/material.dart';

import '../groups/group_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Group Chat App"),
        ),
        body: Center(
          child: TextButton(
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text("Please enter your name"),
                      content: Form(
                        key: formKey,
                        child: TextFormField(
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.length < 3) {
                              return "User must enter a proper name";
                            }
                            return null;
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            nameController.clear();
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              String name = nameController.text;
                              nameController.clear();
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GroupPage(
                                    name: name,
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "Enter",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )),
            child: const Text(
              "initiate group chat",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
              ),
            ),
          ),
        ));
  }
}
