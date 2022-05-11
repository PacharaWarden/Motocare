import 'package:flutter/material.dart';

// ignore: camel_case_types
class Job_one extends StatelessWidget {
  const Job_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          " วันเวลาที่นัดหมาย ",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              hintText: 'เบอร์'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        SizedBox(
                          width: 500,
                          height: 30,
                          child: Column(
                            children: const [
                              Text(
                                " รายละเอียดงาน ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              hintText: ' '),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        const SizedBox(
                          width: 300,
                          height: 40,
                        ),
                        
                      

                      ],
                      
                    )
                    ))));
  }
}