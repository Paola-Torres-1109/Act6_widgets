import 'package:flutter/material.dart';

class Widget001 extends StatelessWidget {
  const Widget001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2e25a4),
        title: Center(
          child: Text(
            'Widget 2',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter App',
          applicationVersion: '1.0.0',
          aboutBoxChildren: [Text('This is text cretaed by Flutter Mapp')],
        ),
      ),
    );
  }
}
