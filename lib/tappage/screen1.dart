import 'package:flutter/material.dart';
import 'package:changrode/page1/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../login_control.dart';
import 'package:flutter/src/widgets/navigator.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
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
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: CircleAvatar(
                  backgroundImage: Image.network(
                          controller.googleAccount.value?.photoUrl ?? '')
                      .image,
                  radius: 50,
                ),
              ),
              Text(
                controller.googleAccount.value?.displayName ?? '',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          )),
        ));
  }
}
