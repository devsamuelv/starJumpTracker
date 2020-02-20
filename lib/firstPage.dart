import 'package:flutter/material.dart';

void main() => runApp(FirstPage());

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstHomePage(),
    );
  }
}

class FirstHomePage extends StatefulWidget {
  @override
  FirstHomePageState createState() => FirstHomePageState();
}

class FirstHomePageState extends State<FirstHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Icon(Icons.star_border, size: 150.0, color: Colors.pinkAccent),
    ));
  }
}
