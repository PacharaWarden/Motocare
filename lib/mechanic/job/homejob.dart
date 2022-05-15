import 'package:flutter/material.dart';

// ignore: camel_case_types
class jobhome extends StatelessWidget {
  const jobhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 189, 189),
      body: Container(
        width: 500,
        height: 400,
        margin: const EdgeInsets.only(top: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromARGB(255, 226, 124, 0)
        ),
        
      ) 
      );
  }
}