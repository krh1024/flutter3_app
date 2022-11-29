import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'pages/first_page.dart';
import 'pages/second_page.dart';
import 'pages/third_page.dart';
import 'pages/fourth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.lightGreen,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  int currentPage = 0;
  List<Widget> pages = const [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "우리아이",
          style: TextStyle(color: Color(0xff096609), fontWeight: FontWeight.w900),
        ),
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentPage,
        showElevation: true,
        itemCornerRadius: 24,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        iconSize: 34,
        containerHeight: 80,
        animationDuration: Duration(milliseconds: 150),
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => currentPage = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('홈'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.restaurant),
            title: Text('아이정보'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.schedule),
            title: Text('식단표'),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('설정'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      )
    );
  }
}
