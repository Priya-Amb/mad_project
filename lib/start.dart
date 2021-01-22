import 'package:flutter/material.dart';
import 'login.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layout(),
    );
  }
  Widget layout() {
   return Column(     children: [
     Center(
       child: Padding(
         padding: const EdgeInsets.only(top: 200),
         child: Image.asset('images/MediFit.png', height: 200, ),
       ),
     ),
      SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: RaisedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),
                  );
                  },
                  child: Text("Login Now!",
                    style: TextStyle(fontSize: 12,
                    color: Colors.white),
                    ),
                    color:Colors.deepPurpleAccent[100] ,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: const Color(0xffe4dbea),)
                    ),
                    ),
                ),            
   ]
     );
  }
}