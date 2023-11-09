// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: CircleAvatar(radius: 50, child: Icon(Icons.person))),
              Center(
                  child: Card(
                margin: EdgeInsets.all(30),
                color: Colors.white70,
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                ),
              )),
              Center(
                child: Card(
                  color: Colors.white70,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "ahmed.abdalgalil@healthpay.com.eg",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 300,
                color: Colors.white,
                child: Center(
                  child: Card(
                    color: Colors.white70,
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "01062043505",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("changes Saved");
                  },
                  child: Text(
                    "Save Changes",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
