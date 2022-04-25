import 'package:flutter/material.dart';

class detailupdate extends StatefulWidget {
  const detailupdate({Key? key}) : super(key: key);

  @override
  State<detailupdate> createState() => _detailupdateState();
}

class _detailupdateState extends State<detailupdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "แก้ไขข้อมูลส่วนตัว",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/531143215508881411/968111279405432922/LOGO1.png',
                            fit: BoxFit.cover,
                            height: 150,
                            width: 150,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'ชื่อ'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'ชื่อ'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'ชื่อ'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'ชื่อ'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'ชื่อ'),
                        ),
                      ],
                    )))));
  }
}
