// ignore_for_file: deprecated_member_use

import 'package:changrode/navbar/mec_nav.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Job_two extends StatelessWidget {
  const Job_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: const Text(' ยกเลิกงาน '),
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
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.phone,
                                        size: 25,
                                        color: Colors.yellow.shade800),
                                    const Text(
                                      " เบอร์ติดต่อ ",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.only(right: 120),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "   092-7408283 ",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(right: 120),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.local_phone,
                                    size: 60,
                                    color: Colors.yellow.shade800,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const Homepage_mec();
                                    }));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                        ),
                        SafeArea(
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.all(0),
                              child: OutlineButton(
                                child: const Text(
                                  "                เสร็จสิ้นภารกิจ                ",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                splashColor:
                                    const Color.fromARGB(255, 241, 172, 112),
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
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                      ],
                    )))));
  }
}
