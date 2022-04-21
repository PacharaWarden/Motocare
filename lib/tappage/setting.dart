import 'dart:ffi';

import 'package:changrode/page1/Login.dart';
import 'package:changrode/page1/log2.dart';
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
        backgroundColor: Colors.blue,
        body: Container(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage:
                  Image.network(controller.googleAccount.value?.photoUrl ?? '')
                      .image,
              radius: 100,
            ),
            Text(
              controller.googleAccount.value?.displayName ?? '',
            ),
            Text(controller.googleAccount.value?.email ?? ''),
            ActionChip(
              avatar: const Icon(Icons.logout),
              label: const Text('logout'),
              onPressed: () async {
                await controller.logout();
                setState(() {});
              },
            )
          ],
        )));
  }
}
