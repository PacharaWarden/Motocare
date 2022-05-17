// ignore_for_file: deprecated_member_use

import 'package:changrode/mechanic/job/homejob.dart';
import 'package:flutter/material.dart';
import '../../model/AppointmentHistory.dart';
import 'package:url_launcher/url_launcher.dart';

class Job_two extends StatefulWidget {
  final int userId;
  AppointmentHistory appointmentHistory;
  Job_two({Key? key, required this.appointmentHistory, required this.userId})
      : super(key: key);

  @override
  State<Job_two> createState() => _Job_twoState();
}

class _Job_twoState extends State<Job_two> {
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
                            widget.appointmentHistory.user.uDisplay.toString(),
                            fit: BoxFit.cover,
                            height: 150,
                            width: 150,
                          ),
                        ),
                        Text(
                          widget.appointmentHistory.user.uName.toString(),
                          style: const TextStyle(fontSize: 25),
                        ),
                        const Text(
                          " ผู้ใช้บริการ ",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          " สถานที่ที่ต้องให้บริการ ",
                          style: TextStyle(fontSize: 18),
                        ),
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
                        const Text(
                          " เบอร์ติดต่อ ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          widget.appointmentHistory.user.uPhoneNo.toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                        // Center(
                        //     child: FloatingActionButton.extended(
                        //   onPressed: (() {
                        //     _makePhoneCall(
                        //         'tel: ${widget.appointmentHistory.user.uPhoneNo.toString()}');
                        //   }),
                        //   icon: const Icon(Icons.call),
                        //   label: const Text("โทรออก"),
                        //   backgroundColor: Colors.white,
                        //   foregroundColor: Colors.black,
                        // )),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: OutlineButton(
                            child: const Text(
                              "          เสร็จสิ้นภาระกิจ          ",
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
                              bool isSuccess = await UpdateStatusAppointment(
                                  widget.appointmentHistory.appointmentId,
                                  "MACHANIC");
                              if (isSuccess) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return jobhome(
                                    userId: widget.userId,
                                  );
                                }));
                              }
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
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
// class Job_two extends StatelessWidget {
//   const Job_two({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.yellow[900],
//           title: const Text(' ยกเลิกงาน '),
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
//                           children: [
//                             Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Icon(Icons.phone,
//                                         size: 25,
//                                         color: Colors.yellow.shade800),
//                                     const Text(
//                                       " เบอร์ติดต่อ ",
//                                       style: TextStyle(fontSize: 20),
//                                     ),
//                                     Container(
//                                       padding:
//                                           const EdgeInsets.only(right: 120),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         const Text(
//                                           "   092-7408283 ",
//                                           style: TextStyle(fontSize: 20),
//                                         ),
//                                         Container(
//                                           padding:
//                                               const EdgeInsets.only(right: 120),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 IconButton(
//                                   icon: Icon(
//                                     Icons.local_phone,
//                                     size: 60,
//                                     color: Colors.yellow.shade800,
//                                   ),
//                                   onPressed: () {
//                                     Navigator.push(context,
//                                         MaterialPageRoute(builder: (context) {
//                                       return const Homepage_mec();
//                                     }));
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(20),
//                         ),
//                         SafeArea(
//                           child: Center(
//                             child: Container(
//                               margin: const EdgeInsets.all(0),
//                               child: OutlineButton(
//                                 child: const Text(
//                                   "                เสร็จสิ้นภารกิจ                ",
//                                   style: TextStyle(
//                                       fontSize: 20.0,
//                                       color: Color.fromARGB(255, 0, 0, 0)),
//                                 ),
//                                 splashColor:
//                                     const Color.fromARGB(255, 241, 172, 112),
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
//                         Container(
//                           padding: const EdgeInsets.all(10),
//                         ),
//                       ],
//                     )))));
//   }
// }
