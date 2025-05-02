import 'package:flutter/material.dart';

class Widget007 extends StatefulWidget {
  const Widget007({Key? key}) : super(key: key);

  @override
  State<Widget007> createState() => _Widget007State();
}

class _Widget007State extends State<Widget007> {
  bool slected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27b070),
        title: const Center(
          child: Text(
            'Widget 8',
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
            slected = !slected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: slected ? 200.0 : 100.0,
            height: slected ? 100.0 : 200.0,
            color: slected ? Colors.blueGrey : Colors.white,
            alignment:
                slected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
