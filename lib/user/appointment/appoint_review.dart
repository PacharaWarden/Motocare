import 'package:changrode/navbar/user_nav.dart';
import 'package:flutter/material.dart';

class Review_User extends StatefulWidget {
  Review_User({Key? key}) : super(key: key);

  @override
  State<Review_User> createState() => _Review_UserState();
}

class _Review_UserState extends State<Review_User> {
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
                        const SizedBox(
                          height: 140,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/531143215508881411/968111279405432922/LOGO1.png',
                            fit: BoxFit.cover,
                            height: 260,
                            width: 260,
                          ),
                        ),
                        
                        
                        
                        

                        ElevatedButton.icon(
                          icon: const Icon(Icons.star),
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