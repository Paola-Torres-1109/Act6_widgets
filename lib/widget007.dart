import 'package:flutter/material.dart';
import 'dart:math' as math;

class Widget006 extends StatefulWidget {
  const Widget006({Key? key}) : super(key: key);

  @override
  State<Widget006> createState() => _Widget006State();
}

class _Widget006State extends State<Widget006> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb02c27),
        title: Center(
          child: Text(
            'Widget 7',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
