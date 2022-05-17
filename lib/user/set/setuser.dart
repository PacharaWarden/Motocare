// ignore_for_file: deprecated_member_use

import 'package:changrode/login/Login.dart';
import 'package:changrode/user/set/profile_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../login_control.dart';

class Setuser extends StatefulWidget {
  const Setuser({Key? key}) : super(key: key);

  @override
  State<Setuser> createState() => _SetuserState();
}

class _SetuserState extends State<Setuser> {
  final controller = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print(controller.googleAccount.value?.displayName);
    if (controller.googleAccount.value == null)
      // ignore: curly_braces_in_flow_control_structures
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 165, 165, 165),
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: const Text(' Setting '),
        ),
        body: Center(
            child: Column(children: <Widget>[
          const SizedBox(
            height: 120,
          ),
          SafeArea(
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(25),
                child: OutlineButton(
                  child: const Text(
                    "แก้ไขข้อมูลส่วนตัว",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  highlightedBorderColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Edituser();
                    }));
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(),
              Center(
                child: CircleAvatar(
                  backgroundImage: Image.network(
                          controller.googleAccount.value?.photoUrl ?? '')
                      .image,
                  radius: 100,
                ),
              ),
              Text(
                controller.googleAccount.value?.displayName ?? '',
              ),
              Text(controller.googleAccount.value?.email ?? ''),
              ActionChip(
                avatar: const Icon(Icons.logout),
                label: const Text('logout'),
                onPressed: () async {
                  await controller.signoutt();
                  setState(() {});
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              )
            ],
          ),
        ])));
  }
}
