import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var items = 10;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.blueGrey[100],
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () =>
                    Navigator.popAndPushNamed(context, '/settingspage'),
              ),
              title: const Text('C A R D S'),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.add_card,
                    size: 40,
                  ),
                  onPressed: () {
                    print("You added a new card");
                  },
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey[800],
                    ),
                    height: 230 + index * 0.0,
                    child: Center(
                        child: Text(
                      'Card $index',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  );
                }),
          ),
        ));
  }
}
