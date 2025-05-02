import 'package:flutter/material.dart';

class Widget008 extends StatefulWidget {
  const Widget008({Key? key}) : super(key: key);

  @override
  State<Widget008> createState() => _Widget008State();
}

class _Widget008State extends State<Widget008> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8bde96),
        title: const Center(
          child: Text(
            'Widget 9',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Color(0xff000000)),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/bluee.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/ocean.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
          ),
        ],
      ),
    );
  }
}
