import 'package:flutter/material.dart';

class Widget004 extends StatelessWidget {
  const Widget004({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb07f27),
        title: Center(
          child: Text(
            'Widget 5',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
