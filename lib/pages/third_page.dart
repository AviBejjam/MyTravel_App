// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_new1/pages/create_page.dart';
import 'package:flutter_app_new1/pages/join_group.dart';

class TwoPushButtons extends StatefulWidget {
  const TwoPushButtons({super.key});

  @override
  State<TwoPushButtons> createState() => _TwoPushButtonsState();
}

class _TwoPushButtonsState extends State<TwoPushButtons> {
  // Create two buttons
  Widget getButton1() {
    return ElevatedButton(
      onPressed: () {
        // Do something when the button is pressed.
        Navigator.push(
          context,MaterialPageRoute(
            builder: (context) =>  Creategroup(),
          ),
        );
      },
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 18,fontWeight: FontWeight.w400)
        ),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
        backgroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      child: Text('Create Group',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),),
    );
  }

  Widget getButton2() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Joinpage(),
          ),
        );
      },
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
        ),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
        backgroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      child: Text('Join Group',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: const [
            Colors.cyan,
            Colors.yellow,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // title: Text('Third Page'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Align(
                alignment: Alignment.topCenter,
                child: Text('Select Your Group preference ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Spacer(),
              Text('Create a Group and add your friends',
              style: TextStyle(
                // fo
              ),),
              SizedBox(height: 30),
              getButton1(),
              SizedBox(height: 20),
              getButton2(),
              Spacer(),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

/*
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_4/pages/create_page.dart';
import 'package:flutter_app_4/pages/join_page.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('User Choice'),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            child: const Text('Create Group'),
            onPressed: () {
              // navigate to second page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Createpage(),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Join Group'),
            onPressed: () {
              // navigate to second page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Joinpage(),
                ),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}
*/