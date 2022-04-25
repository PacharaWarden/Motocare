import 'dart:ffi';

import 'package:changrode/page1/Login.dart';
import 'package:changrode/page1/registerDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../login_control.dart';
import 'package:flutter/src/widgets/navigator.dart';

class settingScreen extends StatefulWidget {
  const settingScreen({Key? key}) : super(key: key);

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
  final controller = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
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
        body: Center(
            child: Column(children: <Widget>[
      SizedBox(
        height: 120,
      ),
      SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(25),
            child: OutlineButton(
              child: Text(
                "แก้ไขข้อมูลส่วนตัว",
                style: TextStyle(fontSize: 20.0),
              ),
              highlightedBorderColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const detailupdate();
                }));
              },
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(),
          Center(
            child: CircleAvatar(
              backgroundImage:
                  Image.network(controller.googleAccount.value?.photoUrl ?? '')
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
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          )
        ],
      )),
    ])));
  }
}
