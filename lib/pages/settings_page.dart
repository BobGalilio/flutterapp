// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('S E T T I N G S'),
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
            title: Text("C A R D S"),
            onTap: () {
              Navigator.pushNamed(context, '/cardspage');
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
