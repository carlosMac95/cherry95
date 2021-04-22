import 'package:flutter/material.dart';
import 'package:aplicacion_widgets15751/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      title: 'Widgets App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}
