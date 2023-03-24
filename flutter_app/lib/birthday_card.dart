import 'package:flutter/material.dart';

class Birthday_Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffd2bcd5),
          body: Container(
            child: Image(image:AssetImage("assets/images/birthday.png") ,),
          ),
        ),
      ),
    );
  }
}
