// ignore_for_file: deprecated_member_use

import 'package:changrode/navbar/user_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewUser extends StatefulWidget {
  const ReviewUser({Key? key}) : super(key: key);

  @override
  State<ReviewUser> createState() => _ReviewUserState();
}

class _ReviewUserState extends State<ReviewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
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
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            RatingBar.builder(
                              minRating: 1,
                              itemBuilder: (context, _) =>
                                  const Icon(Icons.star, color: Colors.amber),
                              onRatingUpdate: (rating) {},
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.border_color_outlined,
                                size: 25,
                                color: Color.fromARGB(255, 194, 116, 0)),
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            hintText: ' อธิบายเพิ่มเติม ',
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SafeArea(
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.all(0),
                              child: OutlineButton(
                                child: const Text(
                                  "                เสร็จสิ้น                ",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromARGB(255, 221, 138, 12)),
                                ),
                                splashColor:
                                    const Color.fromARGB(255, 255, 182, 72),
                                disabledBorderColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Homepage();
                                  }));
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}
