import 'package:flutter/material.dart';
import 'package:mad_project/mediburn_exercise_screen.dart';
import 'package:mad_project/models/user_data.dart';
import 'package:mad_project/preference_helper.dart';

class Mediburn extends StatefulWidget {
  @override
  _MediburnState createState() => _MediburnState();
}

class _MediburnState extends State<Mediburn> {
  UserData userData;

  @override
  void initState() {
    // getData();
    super.initState();
  }

  getData() async {
    userData = await PreferenceHelper.getUserData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: const Color(0xffe4dbea),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Welcome,',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: userData?.name,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ]),
              style: TextStyle(fontSize: 45),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Medi-Burn Exercises',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
                height: 350,
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExerciseScreen(
                                    imageUrl: 'images/disinfection.jpg',
                                    title: 'Arms',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/disinfection.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExerciseScreen(
                                    imageUrl: 'images/scanning.jpg',
                                    title: 'Legs',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/scanning.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExerciseScreen(
                                    imageUrl: 'images/facemask.jpg',
                                    title: 'Wings',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/facemask.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExerciseScreen(
                                    imageUrl: 'images/screening.jpg',
                                    title: 'Warmups',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/screening.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
