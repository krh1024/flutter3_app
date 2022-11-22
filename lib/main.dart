import 'package:flutter/material.dart';
import './pages/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("마시다"),
          centerTitle: true,
          elevation: 4,
        ),
        body: MyHome(),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isOpen = false;

    return Stack(
      children: [
        const Center(
          child: Text("Animation Screen"),
        ),
        AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 800),
          height: double.infinity,
          width: size.width * (2/3),
          color: Colors.blue,
          transform: Matrix4.translationValues( isOpen ? size.width * (1/3) : size.width, 0, 0),
        )
      ],
    );
  }
}
