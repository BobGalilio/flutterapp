// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/settings_page.dart';
import 'package:flutterapp/pages/home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            // leading: Image.network(
            //   "https://w7.pngwing.com/pngs/845/180/png-transparent-unified-payments-interface-bhim-national-payments-corporation-of-india-wallets-text-trademark-logo.png",
            // ),
            title: const Text('Flutter App'),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.settings_applications,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                padding: const EdgeInsets.only(
                  right: 20,
                ),
              ),
            ],
            backgroundColor: Colors.blueGrey,
          ),
          drawer: Drawer(
            backgroundColor: Colors.blueGrey,
            child: Column(children: <Widget>[
              DrawerHeader(
                  child: Image.network(
                "https://w7.pngwing.com/pngs/845/180/png-transparent-unified-payments-interface-bhim-national-payments-corporation-of-india-wallets-text-trademark-logo.png",
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("S E T T I N G S"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              )
            ]),
          ),
          body: Column(children: [
            SizedBox(
                height: 400,
                width: double.infinity,
                child: Card(
                  margin: const EdgeInsets.all(0),
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                    child: Text(
                      "The best ways to pay your payments any time and any where you want",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            const SizedBox(
                height: 380,
                width: double.infinity,
                child: Card(
                  margin: EdgeInsets.all(0),
                  color: Colors.limeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Center(
                      child: Image(
                    image: NetworkImage(
                        "https://i0.wp.com/365webresources.com/wp-content/uploads/2022/12/Payment-Methods-Dark-Icons.webp?ssl=1"),
                    height: 600,
                    width: 400,
                  )),
                )),
          ]),
        ));
  }
}
