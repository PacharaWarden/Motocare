import 'package:changrode/login/Login.dart';
import 'package:changrode/model/machanic.dart';
import 'package:changrode/user/appointment/appoint1.dart';
import 'package:changrode/user/appointment/appoint2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../login_control.dart';
import 'package:http/http.dart' as http;

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final controller = Get.put(LoginController());
  DateTime date = DateTime(2022, 01, 01);
  TimeOfDay time = const TimeOfDay(hour: 00, minute: 00);

  late Future<List<Machanic>> machanicchoose = Future.value([]);
  late List<Machanic> value;

  @override
  void initState() {
    super.initState();
  }

  Future createappointment() async {
    String showtime = '${time.hour}:${time.minute}';

    const String path = "http://192.168.17.186:8000/createappointment";

    Map<String, dynamic> args = {
      "date": date.toString(),
      "time": showtime,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 189, 189),
      body: ListView(
        children: [
          Container(
            width: 500,
            height: 400,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(top: 0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                color: Color.fromARGB(255, 226, 124, 0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(
                      " Welcome to Motocare : ) ",
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                          "  ยินดีต้อนรับเข้าสู่ Motocare : ) ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 224, 224, 224)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 130),
                                ),
                                Image.network(
                                  'https://cdn.discordapp.com/attachments/975031843344748556/975808446966427768/1234.png',
                                  fit: BoxFit.cover,
                                  height: 130,
                                  width: 130,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40),
                            ),
                            Image.network(
                              'https://cdn.discordapp.com/attachments/531143215508881411/968111279405432922/LOGO1.png',
                              fit: BoxFit.cover,
                              height: 180,
                              width: 180,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: 130,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 253, 253, 253),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                ),
                                Text(
                                  controller.googleAccount.value?.displayName ??
                                      '',
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
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
                                Text(
                                  '${time.hour}:${time.minute}',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                ),
                                Icon(Icons.circle,
                                    size: 15,
                                    color: Color.fromARGB(255, 66, 211, 9)),
                                Text(
                                  " งานที่นัดหมายไว้ ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 120),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Appointed();
                        }));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
