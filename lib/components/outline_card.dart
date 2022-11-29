import 'package:flutter/material.dart';

class OutlineCard extends StatelessWidget {
  final double Cwidth;
  final double Cheight;
  final String? Ctext;

  OutlineCard(this.Cwidth, this.Cheight, this.Ctext, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(150, 120),
          shape: RoundedRectangleBorder(
              side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          )
        ),
        onPressed: () {
          // 이벤트 줄 곳
          debugPrint("123");
        },
        child: Center(
          child: Text(Ctext!)
        ),
      ),
    );
  }
}
