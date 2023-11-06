// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(
          title: const Text('Flutter App'),
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
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(children: <Widget>[
          Center(
            child: Image.network(
                "https://images-workbench.99static.com/VW9gHVoyoSouVPUety8NrzIZMOE=/99designs-contests-attachments/66/66392/attachment_66392192"),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 50,
              child: Icon(Icons.person),
            ),
            title: Text("P R O F I L E"),
            onTap: () {
              Navigator.pushNamed(context, '/profilepage');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 50,
              child: Icon(Icons.wallet),
            ),
            title: Text("W A L L E T"),
            onTap: () {
              print("you Pressed Wallet");
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 50,
              child: Icon(Icons.list),
            ),
            title: Text("T R A N S A C T I O N S"),
            onTap: () {
              print("you Pressed Transactions");
            },
          )
        ]));
  }
}
