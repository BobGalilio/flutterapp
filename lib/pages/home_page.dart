// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blueGrey[800],
              appBar: AppBar(
                // leading: Image.network(
                //   "https://w7.pngwing.com/pngs/845/180/png-transparent-unified-payments-interface-bhim-national-payments-corporation-of-india-wallets-text-trademark-logo.png",
                // ),
                title: const Text('Payment App'),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.settings_applications,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/settingspage');
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
                      child: Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey[800],
                                  child: IconButton(
                                    icon: Icon(Icons.person_2_outlined),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/profilepage');
                                    },
                                  ),
                                ),
                              ),
                              Column(children: [
                                Text("Name: Ahmed Abdalgalil"),
                                Text("Phone: +201062043505")
                              ])
                            ],
                          ))),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("H O M E"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/homepage');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("S E T T I N G S"),
                    onTap: () {
                      Navigator.pushNamed(context, '/settingspage');
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
                      color: Colors.blueGrey[800],
                      child: Center(
                          child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.blueGrey[100],
                            ),
                            width: 400,
                            height: 200,
                            margin: EdgeInsets.all(10),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Text(
                                  'TOTAL BALANCE',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey[800]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '500 EGP',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey[800]),
                                ),
                              ),
                            ]),
                          ),
                          Card(
                              color: Colors.blueGrey[100],
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: TextButton(
                                              onPressed: () {
                                                print('TopUp Wallet');
                                              },
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.credit_card,
                                                    color: Colors.blueGrey[800],
                                                    size: 40,
                                                  ),
                                                  Text(
                                                    'TopUp',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blueGrey[800],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: TextButton(
                                              onPressed: () {
                                                print('Withdrawal');
                                              },
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.wallet,
                                                    color: Colors.blueGrey[800],
                                                    size: 40,
                                                  ),
                                                  Text(
                                                    'Withdrawal',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blueGrey[800],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: TextButton(
                                              onPressed: () {
                                                print('Payment Requests');
                                              },
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.attach_money_outlined,
                                                    color: Colors.blueGrey[800],
                                                    size: 40,
                                                  ),
                                                  Text(
                                                    'Payment Requests',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blueGrey[800],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ))),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      )),
                    )),
                SizedBox(
                    height: 304,
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      color: Colors.blueGrey[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: ListView.builder(
                        padding: EdgeInsets.all(10),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[800],
                            ),
                            height: 80 + index * 0.0,
                            child: Center(
                                child: Text(
                              'Transaction $index',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          );
                        },
                      ),
                    )),
              ]),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      label: 'Home',
                      backgroundColor: Colors.blueGrey[800],
                      icon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/homepage');
                          },
                          icon: Icon(
                            Icons.home,
                            semanticLabel: 'Home',
                            color: Colors.blueGrey[800],
                          ))),
                  BottomNavigationBarItem(
                      label: 'Settings',
                      icon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/settingspage');
                          },
                          icon: Icon(
                            Icons.settings,
                            semanticLabel: 'Settings',
                          )))
                ],
              )),
        ));
  }
}
