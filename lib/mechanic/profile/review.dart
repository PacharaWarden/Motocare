import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      
        appBar: AppBar( backgroundColor: Colors.yellow[900],
        title: const Text('Review') ,),
        
        body: ListView(
      children: [
        Container(
          width: 500,
          height: 75,
          margin: const EdgeInsets.all(0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.orange[600]),
              
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
        
        Container(
          width: 500,
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color.fromARGB(255, 165, 165, 165)),
              
        ),
        
      ]
        )
    );
  }
}