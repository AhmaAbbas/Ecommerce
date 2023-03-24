
import 'package:flutter/material.dart';

import 'BasketBallApp/PointsCounterApp.dart';
import 'birthday.dart';
import 'birthday_card.dart';

void main() {
  runApp(Basket_CounterApp());
}

class Helloflutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("hello Ahmed");
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("My Second App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          color: Colors.grey,
          //height: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.blueAccent,
                  child: Center(child: Text("  Flutter  "))),
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.redAccent,
                  child: Center(child: Text("  Flutter  "))),
              Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                  child: Center(child: Text("  Flutter  "))),
            ],
          ),
        )
      ),
    );
  }
}
