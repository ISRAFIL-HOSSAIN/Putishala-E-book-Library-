import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text(
          'Putishala',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, 
            fontSize: 20,
          )
        ),
      ),
    );
  }
}
