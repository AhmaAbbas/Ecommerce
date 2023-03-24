import 'package:flutter/material.dart';

class Login_view extends StatefulWidget {
  const Login_view({Key? key}) : super(key: key);

  @override
  _Login_viewState createState() => _Login_viewState();
}

class _Login_viewState extends State<Login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Log in page"),),
    );
  }
}
