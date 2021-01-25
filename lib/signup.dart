import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_project/home.dart';
import 'package:mad_project/models/user_data.dart';
import 'package:mad_project/preference_helper.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            "New Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.people, size: 18),
                hintText: 'Name',
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
            controller: emailController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail, size: 18),
                hintText: 'Email',
                enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(
                  color: Colors.purpleAccent[100],
                ))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            controller: passwordController,
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
            onPressed: () async {
              if (emailController.text.trim().isEmpty ||
                  nameController.text.trim().isEmpty ||
                  passwordController.text.trim().isEmpty) {
                Fluttertoast.showToast(
                    msg: "Please enter all the fields",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
                return;
              } else {
                await PreferenceHelper.saveUser(UserData(nameController.text,
                    emailController.text, passwordController.text));
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                    (value) => false);
              }
            },
            child: Text(
              "SignUp Now!",
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
      ]),
    );
  }
}
