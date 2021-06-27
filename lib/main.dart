import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RandomListColorPage(),
  ));
}

class RandomListColorPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _RandomListColorPageState createState() => _RandomListColorPageState();
}

class _RandomListColorPageState extends State<RandomListColorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Offers"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
          child: Card(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 80.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "30% off",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "BesT Deals of Today",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.local_offer,
                      color:Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: 10,
      ),
    );
  }
}
