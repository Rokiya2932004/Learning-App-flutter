import 'package:flutter/material.dart';
import 'package:learning_app/screens/family.dart';
import 'package:learning_app/screens/numbers.dart';

import '../components/category.dart';
import 'colors.dart';

class home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title : Text('Learn Dutch', style: TextStyle(color: Colors.white), ),
        backgroundColor: Colors.blue[600],
      ),
      body:
      Column(
        children: [
          Center(
            child: Image(image :AssetImage('images/startScreen.jpg'),
              height: 250,
            ),

          ),
          Text(
            "Welcome....",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              letterSpacing: 3

            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
              "Let's  Start",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Category(
            text:'Numbers',
            transfare:(){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
               return numbers();
             }));
            },
          ),
          const SizedBox(
            height: 1,
          ),
          Category(
              text:'Family',
            transfare: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return family();
                }));
            },
          ),
          const SizedBox(
            height: 1,
          ),
          Category(
              text:'Colors',
              transfare:(){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return colors();
                }));
              }
          ),


        ],
      ),
      //
    );
  }
}
