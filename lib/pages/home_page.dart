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
              title: const Text('Flutter App'),
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
                  child: Image.network(
                    "https://images-workbench.99static.com/VW9gHVoyoSouVPUety8NrzIZMOE=/99designs-contests-attachments/66/66392/attachment_66392192",
                  ),
                )),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("H O M E"),
                  onTap: () {
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
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(16)),
                    child: Center(
                        child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blueGrey[100],
                          ),
                          width: 400,
                          height: 200,
                          margin: EdgeInsets.all(10),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                // shape: BeveledRectangleBorder(
                                //     borderRadius: BorderRadius.circular(20)),
                                // margin: EdgeInsets.all(40),
                                color: Colors.blueGrey[100],
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("TOTAL BALANCE",
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey[800])),
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.blueGrey[100],
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("500 EGP",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey[800])),
                              ),
                            )
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
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: IconButton(
                                            onPressed: () {
                                              print("TopUp Wallet");
                                            },
                                            icon: Icon(Icons.credit_card,
                                                size: 40,
                                                color: Colors.blueGrey[800])),
                                      ),
                                      Center(
                                          child: Text(
                                        "   TopUp",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey[800]),
                                      ))
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Center(
                                        child: IconButton(
                                            onPressed: () {
                                              print("Withdrawal");
                                            },
                                            icon: Icon(Icons.wallet,
                                                size: 40,
                                                color: Colors.blueGrey[800])),
                                      ),
                                      Center(
                                          child: Text(
                                        "   Withdrawal",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey[800]),
                                      ))
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Center(
                                        child: IconButton(
                                            onPressed: () {
                                              print("Payment Request");
                                            },
                                            icon: Icon(Icons.attach_money,
                                                size: 40,
                                                color: Colors.blueGrey[800])),
                                      ),
                                      Center(
                                          child: Text(
                                        "Payment",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey[800],
                                        ),
                                      ))
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    )),
                  )),
              SizedBox(
                  height: 380,
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
                    // child: ListView(children: [
                    //   Padding(
                    //     padding: EdgeInsets.all(10),
                    //   ),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisSize: MainAxisSize.max,
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.blueGrey[100],
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.grey),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.grey),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.grey),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Padding(
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: Expanded(
                    //         child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceEvenly,
                    //             children: <Widget>[
                    //           SizedBox(
                    //             height: 50,
                    //             child: Card(
                    //               color: Colors.lime,
                    //               child: Center(
                    //                 child: Padding(
                    //                   padding: const EdgeInsets.all(10.0),
                    //                   child: Text(
                    //                     "Transaction Info",
                    //                     style: TextStyle(
                    //                         fontSize: 25, color: Colors.teal),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: 50,
                    //             child: Card(
                    //               color: Colors.lime,
                    //               child: Center(
                    //                 child: Padding(
                    //                   padding: const EdgeInsets.all(10.0),
                    //                   child: Text(
                    //                     "06/11/2023",
                    //                     style: TextStyle(
                    //                         fontSize: 25, color: Colors.teal),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           )
                    //         ])),
                    //   ),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ])),
                    //   Expanded(
                    //       child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: <Widget>[
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "Transaction Info",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 50,
                    //           child: Card(
                    //             color: Colors.lime,
                    //             child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: Text(
                    //                   "06/11/2023",
                    //                   style: TextStyle(
                    //                       fontSize: 25, color: Colors.teal),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ]))
                    // ]),
                  )),
            ]),
            // bottomNavigationBar: ButtonBar(
            //     buttonHeight: 20,
            //     buttonPadding: EdgeInsets.all(20),
            //     overflowButtonSpacing: 20,
            //     alignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButton(
            //         icon: Icon(Icons.arrow_back),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/');
            //         },
            //       ),
            //       IconButton(
            //           onPressed: () {
            //             print("You pressed Transactions");
            //           },
            //           icon: Icon(Icons.list))
            //     ]),
          ),
        ));
  }
}
