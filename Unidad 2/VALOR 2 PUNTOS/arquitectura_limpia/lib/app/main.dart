import 'package:flutter/material.dart';
import 'package:arquitectura_limpia/presentation/pages/home_page.dart';
import 'package:arquitectura_limpia/config/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
