import 'package:changrode/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

// ignore: camel_case_types
class mecregis extends StatefulWidget {
  const mecregis({Key? key}) : super(key: key);

  @override
  State<mecregis> createState() => _mecregisState();
}

// ignore: camel_case_types
class _mecregisState extends State<mecregis> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
                      "สมัครเป็นช่าง",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
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
                        hintText: 'ชื่อ',
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
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String? name) {
                        profile.name = name;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
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
                    height: 25,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 9, 18, 18)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 249, 244, 244),
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
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 4, 22, 22)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'ยืนยันพาสเวิด',
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
                      validator:
                          RequiredValidator(errorText: "กรุณายืนยันพาสเวิด"),
                      obscureText: true,
                      onSaved: (String? repass) {
                        profile.repass = repass;
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 236, 167, 19)),
                      child: const Text(
                        "ลงทะเบียน",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState?.save();
                          // ignore: avoid_print
                          print(
                              "Email = ${profile.email} password = ${profile.password}");
                          formKey.currentState?.reset();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
