import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  return MaterialApp(
      routes: {
        '/home':(context) => MeuPage(),
        '/tabbar':(context) => Tabbar(),
        '/snackbar':(context) => Mensagem(),
      },
      initialRoute: '/home',   
  
}

