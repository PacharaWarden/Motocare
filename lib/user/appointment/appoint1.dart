// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:changrode/user/appointment/appoint2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime date = DateTime(2022, 01, 01);
  TimeOfDay time = const TimeOfDay(hour: 00, minute: 00);

  TextEditingController location = new TextEditingController();
  TextEditingController jobdetail = new TextEditingController();

  Future createappointment() async {
    String showtime = '${time.hour}:${time.minute}';

    const String path = "http://192.168.17.186:8000/createappointment";

    Map<String, dynamic> args = {
      "latitude": "123.123",
      "longitude": "123.123",
      "date": date.toString(),
      "time": showtime,
      "jobDescription": jobdetail.text,
      "userAppointment": {"userId": 1, "status": "USER_APPOINT"},
      "location": location.toString()
    };
    print(date.toIso8601String());
    var body = jsonEncode(args);
    print(args);

    final res = await http.post(Uri.parse(path),
        body: body,
        headers: {'Content-Type': 'application/json', 'Accept': '/'});
    print(res.body);
    if (res.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Appointed();
      }));
    } else {
      throw Exception("False to create");
    }
  }

  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(' Edit Profile '),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.discordapp.com/attachments/954072324808769638/975263754642137108/62103.jpg',
                          fit: BoxFit.cover,
                          height: 200,
                          width: 450,
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
                                " ?????????????????? ?????????????????? ",
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
                                "????????? 5.0 ",
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
                          padding: const EdgeInsets.all(20),
                          child: Row(
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
                                        " ????????????????????????????????? ",
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
                                            padding: const EdgeInsets.only(
                                                right: 120),
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
                                        return const Appointed();
                                      }));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.access_time_filled,
                                size: 18,
                                color: Color.fromARGB(255, 11, 104, 16)),
                            Text(
                              " ???????????????????????????????????? ",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ?????????????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ?????????????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ???????????????????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ??????????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ??????????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                " ????????????????????? ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.location_on,
                                size: 18,
                                color: Color.fromARGB(255, 179, 14, 14)),
                            Text(
                              " ?????????????????????????????????????????? ",
                              style: TextStyle(fontSize: 20),
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
                          padding: const EdgeInsets.all(15),
                        ),
                        Row(
                          children: const [
                            Text(
                              " ???????????????????????????????????????????????????????????????????????????????????????????????? ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                        ),
                        TextFormField(
                          controller: location,
                          decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                            hintText: '????????????????????????????????????????????????????????????????????????????????????????????????',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        Row(
                          children: const [
                            Text(
                              " ?????????????????????????????????????????? ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                        ),
                        Row(
                          children: [
                            Text(
                              '${date.year}:${date.month}:${date.day}',
                              style: const TextStyle(fontSize: 18),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 120),
                            ),
                            Text(
                              '$hours:$minutes',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              height: 14,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 235, 136, 22)),
                              child: const Text(' ?????????????????????????????? '),
                              onPressed: () async {
                                DateTime? newDate = await showDatePicker(
                                    context: context,
                                    initialDate: date,
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100));

                                if (newDate == null) return;

                                setState(() => date = newDate);
                              },
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 95),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 235, 136, 22)),
                              child: const Text('?????????????????????????????????'),
                              onPressed: () async {
                                TimeOfDay? newTime = await showTimePicker(
                                  context: context,
                                  initialTime: time,
                                );

                                if (newTime == null) return;

                                setState(() => time = newTime);
                              },
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                        ),
                        Row(
                          children: const [
                            Text(
                              " ????????????????????????????????????????????????????????????????????? ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: jobdetail,
                          decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                            hintText: ' ',
                          ),
                        ),
                        SafeArea(
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.all(25),
                              child: OutlineButton(
                                child: const Text(
                                  "?????????????????????????????????????????????????????????",
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
                                  createappointment();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}
