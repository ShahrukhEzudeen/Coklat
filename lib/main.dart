
import 'package:flutter/material.dart';
import 'package:job1/mainpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coklat Report',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const mainpage(),
    );
  }
}
