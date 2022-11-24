import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;



    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 30, 10),
              child: Text("HOME"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 30, 10),
              child: SizedBox(
                width: 200,
                height: 200,
                child: LiquidCircularProgressIndicator(
                  value: 0.25, // Defaults to 0.5.
                  valueColor: AlwaysStoppedAnimation(Colors.blue), // Defaults to the current Theme's accentColor.
                  backgroundColor: Colors.white, // Defaults to the current Theme's back  groundColor.
                  borderColor: Colors.white12,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Loading..."),
                ),
              ),
            ),
          ],
        )
    );
  }
}
