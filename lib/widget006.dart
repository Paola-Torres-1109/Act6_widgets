import 'package:flutter/material.dart';

class Widget005 extends StatefulWidget {
  const Widget005({Key? key}) : super(key: key);

  @override
  State<Widget005> createState() => _Widget005State();
}

class _Widget005State extends State<Widget005> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb02749),
        title: const Center(
          child: Text(
            'Widget 6',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}
