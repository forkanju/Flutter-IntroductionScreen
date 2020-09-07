import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Home Page", style: TextStyle(fontSize: 90, color: Colors.white),textAlign: TextAlign.center,),
      ),
    );
  }
}
