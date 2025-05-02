import 'package:flutter/material.dart';

class Widget003 extends StatefulWidget {
  const Widget003({Key? key}) : super(key: key);

  @override
  State<Widget003> createState() => _Widget003State();
}

class _Widget003State extends State<Widget003> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27b083),
        title: Center(
          child: Text(
            'Widget 4',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
                title: const Text('Flutter Mapp'),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text('This is the Alert Dialog'),
              ),
            );
          },
        ),
      ),
    );
  }
}
