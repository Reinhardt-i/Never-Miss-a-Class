import 'package:flutter/material.dart';
import 'package:never_miss_a_class/src/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: const HomePage(),
    ); //MaterialApp
  }
}
