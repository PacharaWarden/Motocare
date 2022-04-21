// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:changrode/bar/tabbar.dart';
import 'package:changrode/tappage/screen1.dart';
import 'package:flutter/material.dart';
import 'package:changrode/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';
// ignore: duplicate_import
import 'package:changrode/model/profile.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:google_sign_in/google_sign_in.dart';

import '../login_control.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบ"),
        backgroundColor: Colors.black,
      ),
      // ignore: avoid_unnecessary_container
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                      "https://media.discordapp.net/attachments/918195000943198239/966636592938745896/unknown.png")),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Obx(() {
                if (controller.googleAccount.value == null)
                  // ignore: curly_braces_in_flow_control_structures
                  return buildLoginButton();
                else
                  return gotoHomepage();
              }),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: Image.network(
        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
        height: 32,
        width: 32,
      ),
      label: const Text("Sing in with Google"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }

  gotoHomepage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Homepage()),
    );
  }

  // ignore: non_constant_identifier_names
  Column BuildProfileView() {
    return Column(
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
          onPressed: () {
            controller.logout();
          },
        )
      ],
    );
  }
}
