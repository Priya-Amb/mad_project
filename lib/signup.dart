import 'package:flutter/material.dart';
import 'package:mad_project/about.dart';
import 'package:mad_project/home.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(backgroundColor: const Color(0xffe4dbea),
     leading: IconButton(icon:Icon(Icons.arrow_back,
     color: Colors.black,),
     onPressed: (){
    Navigator.pop(context);
     },
     ),
     ),
       body: layout(),
      backgroundColor: Colors.white
    );
  }
 Widget layout() {
   return Padding(
     padding: const EdgeInsets.only(left: 16, right: 16),
     child: ListView(     children: [
       Center(
         child: Padding(
           padding: const EdgeInsets.only(top: 50),
           child: Image.asset('images/MediFit.png', height: 150, ),
         ),
       ),
       Center(
         child: Text("New Account",
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 30),
         ),
       ),
       SizedBox(
         height: 50,
       ),
       Padding(
         padding: const EdgeInsets.only(left: 16, right: 16),
         child: TextField(decoration: InputDecoration(
                      prefixIcon:Icon(Icons.people,size: 18) ,
                     hintText: 'Name',
                     enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                      color: Colors.purpleAccent[100]
                      )
                     )

                     ),
                  ),
       ),
       SizedBox(
         height: 20,
       ),
       Padding(
         padding: const EdgeInsets.only(left: 16, right: 16),
         child: TextField(decoration: InputDecoration(
                      prefixIcon:Icon(Icons.mail,size: 18) ,
                     hintText: 'Email',
                     enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                      color: Colors.purpleAccent[100],
                      )
                     )

                     ),
                  ),
       ),
        SizedBox(
         height: 20,
       ),
       Padding(
         padding: const EdgeInsets.only(left: 16, right: 16),
         child: TextField(decoration: InputDecoration(
                      prefixIcon:Icon(Icons.lock,size: 18) ,
                     hintText: 'Password',
                     enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                      color: Colors.purpleAccent[100]
                      )
                     )

                     ),
                  ),
       ),
       SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),
                    );
                    },
                    child: Text("SignUp Now!",
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
      ),
   );
  }
}
