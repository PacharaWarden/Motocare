// import 'package:changrode/login_control.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // ignore: unused_import
// import 'package:google_sign_in/google_sign_in.dart';

// // ignore: camel_case_types
// class loginpage extends StatefulWidget {
//   const loginpage({Key? key}) : super(key: key);

//   @override
//   State<loginpage> createState() => _loginpageState();
// }

// // ignore: camel_case_types
// class _loginpageState extends State<loginpage> {
//   final controller = Get.put(LoginController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Login Page"),
//       ),
//       body: Center(
//         child: Obx(() {
//           if (controller.googleAccount.value == null)
//             // ignore: curly_braces_in_flow_control_structures
//             return buildLoginButton();
//           else
//             // ignore: curly_braces_in_flow_control_structures
//             return BuildProfileView();
//         }),
//       ),
//     );
//   }

//   FloatingActionButton buildLoginButton() {
//     return FloatingActionButton.extended(
//       onPressed: () {
//         controller.login();
//       },
//       icon: Image.network(
//         'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
//         height: 32,
//         width: 32,
//       ),
//       label: const Text("Sing in with Google"),
//       backgroundColor: Colors.white,
//       foregroundColor: Colors.black,
//     );
//   }

//   // ignore: non_constant_identifier_names
//   Column BuildProfileView() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         CircleAvatar(
//           backgroundImage:
//               Image.network(controller.googleAccount.value?.photoUrl ?? '')
//                   .image,
//           radius: 100,
//         ),
//         Text(
//           controller.googleAccount.value?.displayName ?? '',
//         ),
//         Text(controller.googleAccount.value?.email ?? ''),
//         ActionChip(
//           avatar: const Icon(Icons.logout),
//           label: const Text('logout'),
//           onPressed: () {
//             controller.logout();
//           },
//         )
//       ],
//     );
//   }
// }
