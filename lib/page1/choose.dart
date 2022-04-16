import 'package:flutter/material.dart';
import 'package:changrode/bar/navebar.dart';

class choose extends StatefulWidget {
  const choose({Key? key}) : super(key: key);

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: navebar(),
      body: Container(
          child: Center(
        child: Image.network(
            "https://cdn.discordapp.com/attachments/919218109334814750/963394971463987240/unknown.png"),
      )),
    );
  }
}
