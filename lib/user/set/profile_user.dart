
import 'package:changrode/navbar/user_nav.dart';
import 'package:flutter/material.dart';

class Edituser extends StatefulWidget {
 const Edituser({Key? key}) : super(key: key);

  @override
  State<Edituser> createState() => _EdituserState();
}

class _EdituserState extends State<Edituser> {


   @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[500],
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
                              return const Homepage();
                            }));
                          },
                        ),
                       
                        
                      ],
                    )))));
  }
}