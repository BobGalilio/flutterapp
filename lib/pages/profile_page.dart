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
          backgroundColor: Colors.blueGrey[100],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () =>
                  Navigator.popAndPushNamed(context, '/settingspage'),
            ),
            title: Text('P R O F I L E'),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.logout,
                  size: 40,
                ),
                onPressed: () {
                  print("You logged out");
                },
                padding: const EdgeInsets.only(
                  right: 20,
                ),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.blueGrey[800],
                  size: 60,
                ),
              )),
              Center(
                  child: Card(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
                color: Colors.white70,
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "   Name",
                  ),
                ),
              )),
              Center(
                  child: Card(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                color: Colors.white70,
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "   Email",
                  ),
                ),
              )),
              Center(
                  child: Card(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
                color: Colors.white70,
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "   Phone Number",
                  ),
                ),
              )),
              FilledButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                  ),
                  onPressed: () {
                    print("changes Saved");
                  },
                  child: Text(
                    "Save Changes",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[900]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
