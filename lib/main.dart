import 'package:act6_rn_6_i/pagina_inicial.dart';
import 'package:flutter/material.dart';
import 'package:act6_rn_6_i/widget002.dart';
import 'package:act6_rn_6_i/widget003.dart';
import 'package:act6_rn_6_i/widget004.dart';
import 'package:act6_rn_6_i/widget005.dart';
import 'package:act6_rn_6_i/widget006.dart';
import 'package:act6_rn_6_i/widget007.dart';
import 'package:act6_rn_6_i/widget008.dart';
import 'package:act6_rn_6_i/widget009.dart';
import 'package:act6_rn_6_i/widget010.dart';
import 'package:act6_rn_6_i/widget011.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        '/widget1': (context) => const Widget001(),
        '/widget2': (context) => const Widget002(),
        '/widget3': (context) => const Widget003(),
        '/widget4': (context) => const Widget004(),
        '/widget5': (context) => const Widget005(),
        '/widget6': (context) => const Widget006(),
        '/widget7': (context) => const Widget007(),
        '/widget8': (context) => const Widget008(),
        '/widget9': (context) => const Widget009(),
        '/widget10': (context) => const Widget010(),
      },
    );
  }
}
