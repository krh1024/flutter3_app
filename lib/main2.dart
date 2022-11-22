import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'pages/BodyContent.dart';
import 'pages/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masida',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("마시다"),
          centerTitle: true,
          elevation: 4,
        ),
        body: BodyContent(),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}