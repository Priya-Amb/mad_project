import 'package:flutter/material.dart';
import 'package:mad_project/home.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffe4dbea),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: layout(),
        backgroundColor: Colors.white);
  }

  Widget layout() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'images/MediFit.png',
              height: 150,
            ),
          ),
        ),
        Center(
          child: Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.people, size: 18),
                hintText: 'UserName',
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.purpleAccent[100]))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 18),
                hintText: 'Password',
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.purpleAccent[100]))),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Container(
          height: 50,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text(
              "Login Now!",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            color: Colors.deepPurpleAccent[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                  color: const Color(0xffe4dbea),
                )),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text(
                  " Sign In",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
