import 'package:flutter/material.dart';
import 'package:requisicao/src/postagem.dart';
import 'src/login.dart';
import 'src/formulario.dart';
import 'principal.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal':(context) => TelaPrincipal(),
        '/login': (context) => Login(),
        '/postagem':(context) => NovaPostagem(),
        '/formulario': (context) => Formulario()
      },
      initialRoute: '/principal',
    );
  }
}