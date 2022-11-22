import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "초기앱",
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text("금호동3가"),
                IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down_rounded))
              ],
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
              IconButton(onPressed: (){}, icon: Icon(Icons.doorbell)),
            ],
          ),
          body: Telling(),
          bottomNavigationBar: DochisBottomBar(),
        )
    );
  }
}

class Telling extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(children: [Flexible(child: Icon(Icons.account_circle)),Text("홍길동")]),
            Row(children: [Flexible(child: Icon(Icons.account_circle)),Text("홍길동")]),
            Row(children: [Flexible(child: Icon(Icons.account_circle)),Text("홍길동")]),
          ],
        )
    );
  }
}

class DochisBottomBar extends StatelessWidget {
  const DochisBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        child: Row(
          children: [
            Expanded(child: Icon(Icons.phone)),
            Expanded(child: Icon(Icons.message)),
            Expanded(child: Icon(Icons.people)),
          ],
        )
    );
  }
}
