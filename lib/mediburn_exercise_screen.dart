import 'package:flutter/material.dart';

class MediburnExerciseScreen extends StatefulWidget {
  final String imageUrl;

  const MediburnExerciseScreen({Key key, this.imageUrl}) : super(key: key);
  @override
  _MediburnExerciseScreenState createState() => _MediburnExerciseScreenState();
}

class _MediburnExerciseScreenState extends State<MediburnExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layout(),
   
    );
  }
  Widget layout(){
    return Center(
      child: Image.asset(widget.imageUrl, height: double.infinity, width: double.infinity,),
      
    );
  }
}