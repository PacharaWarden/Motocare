import 'package:changrode/navbar/mec_nav.dart';
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
                        const Text(
                          " โปรดระบุข้มูลส่วนตัว ",
                          style: TextStyle(fontSize: 25, color: Colors.orange),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.payment,
                                color: Colors.yellow.shade800,
                              ),
                              filled: true,
                              fillColor: Colors.grey[400],
                              border: const OutlineInputBorder(),
                              hintText: ' โปรดระบุเลขบัตรประชาชน 13 หลัก '),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.yellow.shade800,
                              ),
                              filled: true,
                              fillColor: Colors.grey[400],
                              border: const OutlineInputBorder(),
                              hintText: ' ชื่อ-นามสกุล '),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.call,
                                color: Colors.yellow.shade800,
                              ),
                              filled: true,
                              fillColor: Colors.grey[400],
                              border: const OutlineInputBorder(),
                              hintText: ' เบอร์โทรศัพท์มือถือ '),
                        ),
                        Row(
                          children: [
                            Text(
                              " ถ่ายรูปใบหน้า ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade400),
                            ),
                            Text(
                              " ห้ามสวมหมวกและแว่นตาดำ ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.red.shade900),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child:
                                  Image.asset('assets/images/S6569990.jpg'),
                              height: 185,
                              width: 150,
                            ),
                            Text(
                              " ตัวอย่าง ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        Row(children: [
                          ElevatedButton.icon(
                          icon: const Icon(Icons.upload),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            onPrimary: Colors.white,
                          
                          ),
                          label: const Text(" upload ",
                              style: TextStyle(fontSize: 20)),
                              
                          onPressed: () {
                          },
                          
                        ),
                        ],),
                        

                        ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("เข้าสู่ระบบ",
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Homepage_mec();
                            }));
                          },
                        ),
                      ],
                    )))));
  }
}