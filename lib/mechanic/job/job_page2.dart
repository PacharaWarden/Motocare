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
                        const Text(
                          " สถานที่ที่ต้องให้บริการ ",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            hintText: 'ชื่อ',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        const Text(
                          " เบอร์ติดต่อ ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        Container(
                          width: 250,
                          height: 40,
                          margin: const EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.yellow.shade800),
                          child: Row(
                            children: const [
                              Text(
                                " เสร็จสิ้นภาระกิจ ",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                      ],
                    )))));
  }
}
