// ignore_for_file: deprecated_member_use

import 'package:changrode/mechanic/job/job_page2.dart';
import 'package:changrode/navbar/mec_nav.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';
import 'package:changrode/model/AppointmentHistory.dart';

class Job_one extends StatefulWidget {
  final int userId;
  AppointmentHistory appointmentHistory;
  Job_one({Key? key, required this.appointmentHistory, required this.userId})
      : super(key: key);

  @override
  State<Job_one> createState() => _Job_oneState();
}

class _Job_oneState extends State<Job_one> {
  @override
  Widget build(BuildContext context) {
    String date =
        '${DateFormat.yMMMd().format(widget.appointmentHistory.appointment.date.toLocal())}';
    var time = (widget.appointmentHistory.appointment.time)!.substring(0, 5);
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
                            widget.appointmentHistory.user.uDisplay.toString(),
                            fit: BoxFit.cover,
                            height: 150,
                            width: 150,
                          ),
                        ),
                        Text(
                          widget.appointmentHistory.user.uName,
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
                        // addGLocation(),
                        Center(
                            child: FloatingActionButton.extended(
                          onPressed: (() {
                            var lat = double.parse((widget.appointmentHistory
                                .appointment.location.latitude
                                .toString()));
                            var long = double.parse((widget.appointmentHistory
                                .appointment.location.longitude
                                .toString()));
                            _openOnGoogleMapApp(lat, long);
                          }),
                          icon: Image.asset(
                            'assets/images/location.png',
                            height: 32,
                            width: 32,
                          ),
                          label: const Text("ดูสถานที่"),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        )),
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
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '$date  $time น.',
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
                        Text(widget
                            .appointmentHistory.appointment.jobDescription
                            .toString()),
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
                                onPressed: () async {
                                  bool isSuccess =
                                      await UpdateStatusAppointment(
                                          widget
                                              .appointmentHistory.appointmentId,
                                          "MACHANIC_DOING");
                                  if (isSuccess) {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Job_two(
                                          userId: widget.userId,
                                          appointmentHistory:
                                              widget.appointmentHistory);
                                    }));
                                  }
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
                                onPressed: () async {
                                  bool isSuccess =
                                      await UpdateStatusAppointment(
                                          widget
                                              .appointmentHistory.appointmentId,
                                          "MACHANIC_CANCEL");
                                  if (isSuccess) {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Homepage_mec(
                                        userId: widget.userId,
                                      );
                                    }));
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }

  _openOnGoogleMapApp(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    print(googleUrl);
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      // Could not open the map.
      print('cannot open google map');
    }
  }
}
// ignore: camel_case_types
// class JobOne extends StatelessWidget {
//   JobOne({Key? key}) : super(key: key);
//   DateTime date = DateTime(2022, 01, 01);
//   TimeOfDay time = const TimeOfDay(hour: 00, minute: 00);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.yellow[900],
//           title: const Text(' Job '),
//         ),
//         body: SafeArea(
//             child: SingleChildScrollView(
//                 child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 20, horizontal: 20),
//                     child: Column(
//                       children: [
//                         Container(
//                           alignment: Alignment.center,
//                           child: Image.network(
//                             'https://cdn.discordapp.com/attachments/531143215508881411/968111279405432922/LOGO1.png',
//                             fit: BoxFit.cover,
//                             height: 150,
//                             width: 150,
//                           ),
//                         ),
//                         const Text(
//                           " ท็อป ",
//                           style: TextStyle(fontSize: 25),
//                         ),
//                         const Text(
//                           " ผู้ใช้บริการ ",
//                           style: TextStyle(fontSize: 18, color: Colors.grey),
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         Row(
//                           children: const [
//                             Text(
//                               " สถานที่ที่ต้องไปให้บริการ ",
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ],
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(0)),
//                             hintText: ' Location ',
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10),
//                         ),
//                         Row(
//                           children: const [
//                             Text(
//                               " วันเวลาที่นัดหมาย ",
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             const Padding(
//                               padding: EdgeInsets.all(10),
//                             ),
//                             Text(
//                               '${date.year}:${date.month}:${date.day}',
//                               style: const TextStyle(fontSize: 18),
//                             ),
//                             Container(
//                               padding: const EdgeInsets.only(right: 50),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10),
//                         ),
//                         Row(
//                           children: const [
//                             Text(
//                               " รายละเอียดงาน ",
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ],
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Colors.white,
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(0)),
//                               hintText: ' '),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10),
//                         ),
//                         SafeArea(
//                           child: Center(
//                             child: Container(
//                               margin: const EdgeInsets.only(top: 0),
//                               child: OutlineButton(
//                                 child: const Text(
//                                   "          ยืนยันการรับงาน          ",
//                                   style: TextStyle(
//                                       fontSize: 20.0,
//                                       color: Color.fromARGB(255, 24, 167, 5)),
//                                 ),
//                                 splashColor:
//                                     const Color.fromARGB(255, 244, 155, 54),
//                                 disabledBorderColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(15)),
//                                 onPressed: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                     return const Job_two();
//                                   }));
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                         SafeArea(
//                           child: Center(
//                             child: Container(
//                               margin: const EdgeInsets.all(0),
//                               child: OutlineButton(
//                                 child: const Text(
//                                   "                ไม่รับงาน                ",
//                                   style: TextStyle(
//                                       fontSize: 20.0,
//                                       color: Color.fromARGB(255, 255, 0, 0)),
//                                 ),
//                                 splashColor:
//                                     const Color.fromARGB(255, 187, 6, 6),
//                                 disabledBorderColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(15)),
//                                 onPressed: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                     return const Homepage_mec();
//                                   }));
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )))));
//   }
// }
