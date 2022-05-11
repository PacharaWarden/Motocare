// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore
import 'package:changrode/login/meclogin.dart';
import 'package:changrode/navbar/user_nav.dart';
import 'package:flutter/material.dart';
import 'package:changrode/model/user.dart';
// ignore: duplicate_import
import 'package:changrode/model/user.dart';
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
  final formKey = GlobalKey<FormState>();
  dynamic user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
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
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: SizedBox(
                child: Text(
                  "เข้าสู่ระบบสำหรับบุคคลทั่วไป",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SafeArea(
              child: TextButton(
                child: const Text(
                  "เข้าสู่ระบบสำหรับช่าง",
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const meclogin();
                  }));
                },
              ),
            ),
            const SizedBox(
              height: 20,
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
        if (controller.googleAccount.value!.email != null) {
          user = await Checkuser(controller.googleAccount.value!.email);
          print(user);
          if (user == null) {
            // if (data.uEmail == null)

            await regisuser(
                controller.googleAccount.value!.email,
                controller.googleAccount.value!.displayName.toString(),
                controller.googleAccount.value!.photoUrl.toString(),
                "USER");

            gotoHomepage();
            // } else {
            //   gotoHomepage();
            // }
          } else {
            gotoHomepage();
          }
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
      label: const Text("Sign in with Google"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }

  gotoHomepage() {
    // SchedulerBinding.instance?.addPostFrameCallback((_) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const Homepage(),
      ),
    );
  }

  // Future<void> check(String email) async {
  //   user = (await Checkuser(email));
  //   if (user != null) {
  //     //context.read<UserProvider>().setUser(user);
  //   }
  // }
}
