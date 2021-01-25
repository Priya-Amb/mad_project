import 'package:flutter/material.dart';

class MediburnExerciseScreen extends StatefulWidget {
  final String imageUrl;
  final String title;

  const MediburnExerciseScreen({Key key, this.imageUrl, this.title})
      : super(key: key);
  @override
  _MediburnExerciseScreenState createState() => _MediburnExerciseScreenState();
}

class _MediburnExerciseScreenState extends State<MediburnExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title),
      ),
      body: layout(),
    );
  }

  Widget layout() {
    return Center(
      child: Image.asset(
        widget.imageUrl,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
