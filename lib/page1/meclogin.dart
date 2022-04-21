import 'package:changrode/bar/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:changrode/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';
// ignore: duplicate_import
import 'package:changrode/model/profile.dart';
import 'package:changrode/page1/machanicregis.dart';
// ignore: duplicate_import
import 'package:changrode/bar/tabbar.dart';

// ignore: camel_case_types
class meclogin extends StatefulWidget {
  const meclogin({Key? key}) : super(key: key);

  @override
  State<meclogin> createState() => _mecloginState();
}

// ignore: camel_case_types
class _mecloginState extends State<meclogin> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบสำหรับช่าง"),
        backgroundColor: Colors.black,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.network(
                            "https://cdn.discordapp.com/attachments/919218109334814750/963394971463987240/unknown.png")),
                  ),
                  const Center(
                      child: Text(
                    "เข้าสู่ระบบสำหรับช่าง",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w600),
                  )),
                  const SizedBox(height: 25),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 22.0, color: Color(0xFFbdc6cf)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'อีเมล',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "กรุณาป้อนอีเมลด้วยครับ"),
                        EmailValidator(errorText: "รูปแบบอีเมลไม่ถูกต้อง")
                      ]),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String? email) {
                        profile.email = email;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 249, 251, 251)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'พาสเวิด',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                      validator: RequiredValidator(
                          errorText: "กรุณาป้อนรหัสผ่านด้วยครับ"),
                      obscureText: true,
                      onSaved: (String? password) {
                        profile.password = password;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 236, 167, 19)),
                        onPressed: () {}),
                  ),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const mecregis();
                        }));
                      },
                      child: const Text(
                        'สมัครเป็นช่าง',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                  // ฝากกกกกกกกกกกกกกกกกกกกกกกกกกกกก
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Homepage();
                        }));
                      },
                      child: const Text(
                        'ไปหน้าแอป ทำเป็นเดี๋ยวลบ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),

                  /// ถึงนี้นะ อิอิ
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
