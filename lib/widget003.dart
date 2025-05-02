import 'package:flutter/material.dart';

class Widget002 extends StatelessWidget {
  const Widget002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2776b0),
        title: Center(
          child: Text(
            'Widget 3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                ),
                onPressed: () {},
                child: null,
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
