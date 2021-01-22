import 'package:flutter/material.dart';

class Medicare extends StatefulWidget {
  @override
  _MedicareState createState() => _MedicareState();
}

class _MedicareState extends State<Medicare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4dbea),
      body: layout(),
    );
  }

  Widget layout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(children: [
        SizedBox(height: 20),
        Text.rich(
          TextSpan(
              text: 'Welcome,',
              style: TextStyle(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' Grayson!',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ]),
          style: TextStyle(fontSize: 45),
        ),
        SizedBox(height: 20),
        Text(
          "How are you feeling today?",
          style: TextStyle(fontSize: 20),
        ),
      ]),
    );
  }
}
