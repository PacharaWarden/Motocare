// ignore_for_file: deprecated_member_use

import 'package:changrode/mechanic/job/job_page1.dart';
import 'package:flutter/material.dart';
import 'package:changrode/model/AppointmentHistory.dart';
import 'package:intl/intl.dart';

class jobhome extends StatefulWidget {
  final int userId;
  const jobhome({Key? key, required this.userId}) : super(key: key);

  @override
  State<jobhome> createState() => _jobhomeState();
}

class _jobhomeState extends State<jobhome> {
  late Future<List<AppointmentHistory>> future;
  late List<AppointmentHistory> value;

  @override
  void initState() {
    super.initState();
    future = getAppointment(widget.userId);
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
          SizedBox(
            width: 500,
            height: 350,
            child: FutureBuilder<List<AppointmentHistory>>(
              future: future,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data.toString() == "[]") {
                  return const Center(
                    child: Text(
                      'ยังไม่มีการนัดหมายช่าง',
                      style:
                          TextStyle(color: Color.fromRGBO(176, 162, 148, 1.0)),
                    ),
                  );
                } else if (snapshot.hasData) {
                  value = snapshot.data!;
                  return ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        String date =
                            '${DateFormat.yMMMd().format(value[index].appointment.date.toLocal())}';
                        return ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: (() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Job_one(
                                                userId: widget.userId,
                                                appointmentHistory:
                                                    value[index]),
                                      ),
                                    );
                                  }),
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color.fromARGB(
                                          255, 253, 253, 253),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20.5,
                                              backgroundImage: Image.network(
                                                      (value[index]
                                                              .user
                                                              .uDisplay)
                                                          .toString())
                                                  .image,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(value[index]
                                                .user
                                                .uName
                                                .toString()),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(date),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(value[index]
                                                .appointment
                                                .time
                                                .toString())
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ));
                      });
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types

// class jobhome extends StatelessWidget {
//   final int userId;
//   const jobhome({Key? key, required this.userId}) : super(key: key);
//   DateTime date = DateTime(2022, 01, 01);
//   TimeOfDay time = const TimeOfDay(hour: 00, minute: 00);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 189, 189, 189),
//       body: ListView(
//         children: [
//           Container(
//             width: 500,
//             height: 375,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(40),
//                 color: const Color.fromARGB(255, 226, 124, 0)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   children: const [
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                     ),
//                     Text(
//                       " Welcome to Motocare : ) ",
//                       style: TextStyle(fontSize: 27, color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.all(10),
//                         ),
//                         Text(
//                           "  ยินดีต้อนรับเข้าสู่ Motocare : ) ",
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 224, 224, 224)),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 const Padding(
//                                   padding: EdgeInsets.only(bottom: 135),
//                                 ),
//                                 Image.network(
//                                   'https://cdn.discordapp.com/attachments/975031843344748556/975808446966427768/1234.png',
//                                   fit: BoxFit.cover,
//                                   height: 130,
//                                   width: 130,
//                                 ),
//                               ],
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(left: 80),
//                             ),
//                             Image.network(
//                               'https://cdn.discordapp.com/attachments/531143215508881411/968111279405432922/LOGO1.png',
//                               fit: BoxFit.cover,
//                               height: 180,
//                               width: 180,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: 500,
//             height: 130,
//             margin: const EdgeInsets.all(15),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//               color: const Color.fromARGB(255, 253, 253, 253),
//             ),
//             child: Column(
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.all(10),
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.all(10),
//                                 ),
//                                 Text(
//                                   "ชื่อ",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ],
//                             ),
//                             Container(
//                               padding: const EdgeInsets.all(5),
//                             ),
//                             Row(
//                               children: [
//                                 const Padding(
//                                   padding: EdgeInsets.all(10),
//                                 ),
//                                 Text(
//                                   '${date.year}:${date.month}:${date.day}',
//                                   style: const TextStyle(fontSize: 18),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(right: 50),
//                                 ),
//                               ],
//                             ),
//                             Container(
//                               padding: const EdgeInsets.all(5),
//                             ),
//                             Row(
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.all(10),
//                                 ),
//                                 Icon(Icons.circle,
//                                     size: 15,
//                                     color: Color.fromARGB(255, 228, 0, 0)),
//                                 Text(
//                                   " ยืนยันการรับงาน ",
//                                   style: TextStyle(fontSize: 18),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.only(right: 120),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: const Icon(
//                         Icons.arrow_forward_ios,
//                         size: 35,
//                       ),
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) {
//                           return JobOne();
//                         }));
//                       },
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


