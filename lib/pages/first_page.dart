
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_new1/pages/second_page.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.cyan,
            Colors.yellow,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // title: const Text('First Page'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('The World is your Oyster,',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              Text('and our App is your Pearl.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              // Text('\n'),
              SizedBox(height: 35,),
              Text('\n'),
              Image.asset('/Users/avinashbejjam/Documents/Flutter_apps_develop/flutter_app_new1/assets/images/travel_pic.png',
              fit: BoxFit.scaleDown,),
              Spacer(),
              Text('Explore the World....',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('GO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(width: 5),
                        Icon(CupertinoIcons.arrow_right_circle_fill),
                      ],
                    ),
                    onPressed: () {
                      // navigate to second page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Secondpage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
