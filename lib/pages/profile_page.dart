// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                child: Image.network(
                    "https://images-workbench.99static.com/VW9gHVoyoSouVPUety8NrzIZMOE=/99designs-contests-attachments/66/66392/attachment_66392192"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
