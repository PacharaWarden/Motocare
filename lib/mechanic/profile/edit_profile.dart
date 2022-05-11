import 'package:changrode/navbar/mec_nav.dart';
import 'package:changrode/mechanic/job/homejob.dart';
import 'package:changrode/mechanic/profile/profile_mec.dart';
import 'package:flutter/material.dart';

class Edit_profile extends StatelessWidget {
  const Edit_profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 165, 165, 165),
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
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
                          height: 40,
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
                                " วันเวลาที่รับงาน ",
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
                                  borderRadius: BorderRadius.circular(40)),
                              hintText: 'ชื่อ'),
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
                                " Location เริ่มต้น ",
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
                                  borderRadius: BorderRadius.circular(40)),
                              hintText: 'ชื่อ'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                        ),
                        Container(
                          width: 300,
                          height: 35,
                          margin: const EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.white),
                          child: Row(
                            children:  const [
                              Text(
                                " แก้ไขสถานที่ ",
                                style: TextStyle(fontSize: 18),
                                
                              ),
                              Icon(Icons.location_on, size: 20, color: Colors.red),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                        ),
                        
                        
                        ElevatedButton.icon(
                          icon: const Icon(Icons.ac_unit),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          label: const Text("ยืนยัน",
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
