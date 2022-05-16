// ignore_for_file: deprecated_member_use

import 'package:changrode/mechanic/job/job_page2.dart';
import 'package:changrode/navbar/mec_nav.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Job_one extends StatelessWidget {
  Job_one({Key? key}) : super(key: key);
  DateTime date = DateTime(2022, 01, 01);
  TimeOfDay time = const TimeOfDay(hour: 00, minute: 00);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: const Text(' Job '),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
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
                        const Text(
                          " ท็อป ",
                          style: TextStyle(fontSize: 25),
                        ),
                        const Text(
                          " ผู้ใช้บริการ ",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: const [
                            Text(
                              " สถานที่ที่ต้องไปให้บริการ ",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                            hintText: ' Location ',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        Row(
                          children: const [
                            Text(
                              " วันเวลาที่นัดหมาย ",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            Text(
                              '${date.year}:${date.month}:${date.day}',
                              style: const TextStyle(fontSize: 18),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 50),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        Row(
                          children: const [
                            Text(
                              " รายละเอียดงาน ",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              hintText: ' '),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        SafeArea(
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.only(top: 0),
                              child: OutlineButton(
                                child: const Text(
                                  "          ยืนยันการรับงาน          ",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromARGB(255, 24, 167, 5)),
                                ),
                                splashColor:
                                    const Color.fromARGB(255, 244, 155, 54),
                                disabledBorderColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Job_two();
                                  }));
                                },
                              ),
                            ),
                          ),
                        ),
                        SafeArea(
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.all(0),
                              child: OutlineButton(
                                child: const Text(
                                  "                ไม่รับงาน                ",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromARGB(255, 255, 0, 0)),
                                ),
                                splashColor:
                                    const Color.fromARGB(255, 187, 6, 6),
                                disabledBorderColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Homepage_mec();
                                  }));
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}
