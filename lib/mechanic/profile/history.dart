import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 165, 165),
      
        appBar: AppBar( backgroundColor: Colors.yellow[900],
        title: const Text('History') ,),
        
        body: ListView(
      children: [
        
        Container(
          width: 500,
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[300]),
              
        ),
        
        Container(
          width: 500,
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[300]),
              
        ),
        
        Container(
          width: 500,
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[300]),
              
        ),
        
        Container(
          width: 500,
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[300]),
              
        ),
        
      ]
        )
    );
  }
}