import 'package:flutter/material.dart';

class Mediburn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: const Color(0xffe4dbea),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: ListView(
          children: [
          
              SizedBox(height: 20),
              Text.rich(TextSpan(
                text: 'Welcome,',
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: ' Grayson!',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ]
                ),
                style: TextStyle(fontSize: 45),
                ),
                SizedBox(height: 25),
                TextField(decoration: InputDecoration(
                  prefixIcon:Icon(Icons.search,size: 18) ,
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),
                 ),
                 hintText: 'Search',
                 ),
              ),
              SizedBox(height: 80,
              ),
              Text(
                'Medi-Burn Exercises',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,
                ),
              ),
              SizedBox(height:15),
              SizedBox(
                height:200,
              child: GridView.count(
                padding: const EdgeInsets.all(20),
     crossAxisCount: 2,
     children: <Widget>[
       Container(
         padding: const EdgeInsets.all(8),
         child: Container(
         decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/disinfection.jpg'),
                      fit: BoxFit.cover,
                    ),
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        )
                    ),
         ),
         ),
        Container(
         padding: const EdgeInsets.all(8),
         child: Container(
         decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/scanning.jpg'),
                     fit: BoxFit.cover,
                    ),
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        )
                    ),
         ),
         ),
        Container(
         padding: const EdgeInsets.all(8),
         child: Container(
         decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/facemask.jpg'),
                     fit: BoxFit.cover,
                    ),
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        )
                    ),
         ),
         ),
        Container(
         padding: const EdgeInsets.all(8),
         child: Container(
         decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/screening.jpg'),
                    fit: BoxFit.cover,
                    ),
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        )
                    ),
         ),
         ),
     ],
                )
              )
          ],
          ),
      ),
    );
  }
}
