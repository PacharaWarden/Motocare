import 'package:changrode/navbar/mec_nav.dart';
import 'package:flutter/material.dart';

class detailupdate extends StatefulWidget {
  final int userId;

  const detailupdate({
    Key? key,
    required this.userId,
  }) : super(key: key);

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
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          " โปรดระบุข้มูลส่วนตัว ",
                          style: TextStyle(fontSize: 25, color: Colors.orange),
                        ),
                        const SizedBox(
                          height: 20,
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
                        const SizedBox(
                          height: 5,
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
                        const SizedBox(
                          height: 5,
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              " ถ่ายรูปใบหน้า ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade400),
                            ),
                            Text(
                              " ห้ามสวมหมวกและแว่นตาดำ ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.red.shade900),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Image.network(
                                  'https://cdn.discordapp.com/attachments/954072324808769638/975263754642137108/62103.jpg'),
                              height: 185,
                              width: 150,
                            ),
                            Text(
                              "    ตัวอย่าง ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ElevatedButton.icon(
                              icon: const Icon(
                                Icons.upload,
                                color: Colors.black,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  onPrimary: const Color.fromARGB(255, 0, 0, 0),
                                  primary:
                                      const Color.fromARGB(255, 248, 162, 64)),
                              label: const Text(" upload ",
                                  style: TextStyle(fontSize: 20)),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              " วันและวันเวลาทำงาน ",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.work,
                                color: Colors.yellow.shade800,
                              ),
                              filled: true,
                              fillColor: Colors.grey[400],
                              border: const OutlineInputBorder(),
                              hintText: ' ใส่วันและเวลาที่คุณต้องการทำงาน '),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(
                            Icons.login,
                            color: Colors.black,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 248, 162, 64)),
                          ),
                          label: const Text("เข้าสู่ระบบ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return Homepage_mec(userId: widget.userId);
                            }));
                          },
                        ),
                      ],
                    )))));
  }
}
