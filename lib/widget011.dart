import 'package:flutter/material.dart';

class Widget010 extends StatefulWidget {
  const Widget010({Key? key}) : super(key: key);

  @override
  State<Widget010> createState() => _Widget010State();
}

class _Widget010State extends State<Widget010> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9abfea),
        title: const Center(
          child: Text(
            'Widget 11',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_isPlay == false) {
              _controller.forward();
              _isPlay = true;
            } else {
              _controller.reverse();
              _isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
