import 'package:changrode/mechanic/profile/edit_profile.dart';
import 'package:changrode/mechanic/profile/history.dart';
import 'package:changrode/mechanic/profile/review.dart';
import 'package:flutter/material.dart';

class profile_mec extends StatefulWidget {
  profile_mec({Key? key}) : super(key: key);
  final List<String> myList = [
    "personal information",
    "personal information",
    "personal information",
  ];

  @override
  State<profile_mec> createState() => _profile_mecState();
}

// ignore: camel_case_types
class _profile_mecState extends State<profile_mec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          width: 500,
          height: 270,
          margin: const EdgeInsets.only(top: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color.fromARGB(255, 226, 124, 0)),
          child: Column(
            children: [
              Icon(Icons.person_pin, size: 200, color: Colors.yellow.shade800),
              const Text(
                " พชร ขุนทอง ",
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                "ดาว 5.0 ",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(Icons.person_pin, size: 40, color: Colors.yellow.shade800),
              const Text(
                " ข้อมูลส่วนตัว ",
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Edit_profile();
                  }));
                },
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(Icons.history, size: 40, color: Colors.yellow.shade800),
              const Text(
                " ประวัติการใช้บริการ ",
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const History();
                  }));
                },
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(Icons.star, size: 40, color: Colors.yellow.shade800),
              const Text(
                " รีวิวของฉัน ",
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Review();
                  }));
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
