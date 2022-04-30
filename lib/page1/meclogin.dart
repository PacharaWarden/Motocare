import 'package:changrode/bar/tabbar.dart';
import 'package:changrode/page1/Login.dart';
import 'package:changrode/tappage/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:changrode/model/user.dart';
import 'package:flutter/scheduler.dart';
import 'package:form_field_validator/form_field_validator.dart';
// ignore: duplicate_import
import 'package:changrode/model/user.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:google_sign_in/google_sign_in.dart';

import '../login_control.dart';

class meclogin extends StatefulWidget {
  const meclogin({Key? key}) : super(key: key);

  @override
  State<meclogin> createState() => _mecloginState();
}

class _mecloginState extends State<meclogin> {
  final controller = Get.put(LoginController());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("เข้าสู่ระบสำหรับช่าง"),
        backgroundColor: Colors.black,
      ),
      // ignore: avoid_unnecessary_container
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: (Image.network(
                "https://cdn.discordapp.com/attachments/915989715096846406/967724791958241320/LOGO1.png",
                height: 300,
                width: 300,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                child: Text(
                  "เข้าสู่ระบบสำหรับช่าง",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SafeArea(
              child: TextButton(
                child: Text(
                  "กลับไปหน้าแรก",
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
              ),
            ),
            Center(
              child: (buildLoginButton()),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () async {
        await controller.login();
        if (controller.googleAccount.value?.email != null) {
          gotoHomepage();
        } else {
          await controller.signoutt();
          setState(() {});
        }
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
    // SchedulerBinding.instance?.addPostFrameCallback((_) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => Homepage(),
      ),
    );
  }
}
