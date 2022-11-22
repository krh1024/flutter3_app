
import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        child: Center(
            child: Column(
              children: [
                Expanded(
                    child: Stack(
                      children: [
                        Container(),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 300,
                              child: SizedBox(),
                          )
                        ),
                      ],
                    )
                ),
                Expanded(child: Text("HELLO")),
                Expanded(child: Text("HELLO")),
              ],
            )
        ),
      ),
    );
  }
}