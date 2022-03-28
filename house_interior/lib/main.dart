import 'package:flutter/material.dart';
import 'package:house_interior/LoginActivity.dart';
void main() => runApp(MainApp());
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginActivity(),
    );
  }
}