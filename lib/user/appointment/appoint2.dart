// ignore_for_file: deprecated_member_use

import 'package:changrode/user/appointment/appoint_review.dart';
import 'package:flutter/material.dart';

class Appointed extends StatefulWidget {
  Appointed({Key? key}) : super(key: key);

  @override
  State<Appointed> createState() => _AppointedState();
}

class _AppointedState extends State<Appointed> {
  DateTime date = DateTime(2022, 01, 01);
  TimeOfDay time = const TimeOfDay(hour: 00, minute: 00);


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 255, 255, 255),
          title: const Text(' Edit Profile '),
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
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 500,
                          height: 40,
                          child: Column(
                            children: const [
                              Text(
                                " นายพชร ขุนทอง ",
                                style: TextStyle(fontSize: 23),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          height: 30,
                          child: Column(
                            children: const [
                              Text(
                                "ดาว 5.0 ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                        ),
                        
                        Container(
                          padding: const EdgeInsets.all(15),
                        ),
                        Row(
                          children: const [
                            Text(
                              " รายละเอียดงาน ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                            hintText: ' ',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.location_on,
                                size: 18,
                                color: Color.fromARGB(255, 179, 14, 14)),
                            Text(
                              " ที่อยู่ของช่าง ",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        
                        
                        TextFormField(
                          decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                            hintText: 'เลือกสถานที่ที่จะให้ช่างไปบริการ',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        
                        
                        SafeArea(
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.all(25),
                              child: OutlineButton(
                                child: const Text(
                                  "นัดหมายวันใช้บริการ",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromARGB(255, 165, 107, 0)),
                                ),
                                highlightColor:
                                  const Color.fromARGB(255, 244, 155, 54),
                                disabledBorderColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Review_User();
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