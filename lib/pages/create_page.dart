import 'package:flutter/material.dart';
import 'package:flutter_app_new1/pages/budget_and_chat.dart';

class Creategroup extends StatefulWidget {
  const Creategroup({super.key});

  @override
  State<Creategroup> createState() => _CreategroupState();
}

class _CreategroupState extends State<Creategroup> {
  List<String> items = [
    'Select',
    'Paris',
    'Hyderabad',
    'Delhi',
    'NewYork',
    'Italy',
    'Shimla',
    'Kerala'
  ];
  String? selectedplace = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Create a Group',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        // shadowColor: Colors.transparent,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
          child: Column(
            children: [
              const Text('\n'),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'TeamName',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'GroupSize',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('\n'),
              const Align(
                child: Text('Select a Destination Place below ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),),
              ),
              const Text('\n'),
              DropdownButton<String>(
                value: selectedplace,
                items: items
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item, style: const TextStyle(fontSize: 20)),
                      ),
                    )
                    .toList(),
                onChanged: (item) => setState(() => selectedplace = item),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FourthPage(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                child: const Text('Create Group',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










/*// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Createpage extends StatelessWidget {
  const Createpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:const[
            Colors.red,
            Colors.blue
          ],
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Create User Page'),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

*/