// ignore: file_names
// ignore: file_names
// ignore: file_names, file_names
// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names

import 'package:changrode/page1/Login.dart';

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:changrode/page1/meclogin.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 100, 0, 20),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.discordapp.com/attachments/919218109334814750/963394971463987240/unknown.png"),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
          width: double.infinity,
          child: ElevatedButton.icon(
            icon: Icon(Icons.login),
            label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
        ),
        const SizedBox(height: 30),
        TextButton(
          style: TextButton.styleFrom(),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return meclogin();
            }));
          },
          child: const Text(
            'เข้าสู่ระบบสำหรับช่าง',
            style: TextStyle(
              fontSize: 20,
              color: Colors.yellow,
            ),
          ),
        ),
      ]),
    );
  }
}
