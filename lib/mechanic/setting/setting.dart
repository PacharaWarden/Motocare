
import 'package:changrode/login/Login.dart';
import 'package:changrode/login/registerDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../login_control.dart';

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
      backgroundColor: const Color.fromARGB(255, 165, 165, 165),
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: const Text(' Setting '),
        ),
        body: Center(
            child: Column(children: <Widget>[

      const SizedBox(
        height: 75,
      ),
      Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(),
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
