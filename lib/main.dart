import 'package:flutter/material.dart';
import 'package:mad_project/signup.dart';
import 'package:mad_project/start.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
_MyAppState createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: StartScreen(

      )
    );
  }
}