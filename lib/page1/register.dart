import 'package:changrode/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
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
                  Center(
                    child: Text(
                      "สมัครสมาชิก",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 25),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'ชื่อ',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String? name) {
                        profile.name = name;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'อีเมล',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
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
                  SizedBox(
                    height: 25,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 9, 18, 18)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 249, 244, 244),
                        hintText: 'พาสเวิด',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
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
                  SizedBox(
                    height: 25,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 4, 22, 22)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'ยืนยันพาสเวิด',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
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
                  SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 236, 167, 19)),
                      child: Text(
                        "ลงทะเบียน",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState?.save();
                          if (profile.password == profile.repass) {
                            print(
                                "name = ${profile.name} Email = ${profile.email} password = ${profile.password} repass=${profile.repass}");
                            formKey.currentState?.reset();
                          } else {
                            RequiredValidator(errorText: "พาสเวิดไม่ตรงกัน");
                            alertDialog(context);
                          }
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

  alertDialog(BuildContext context) {
    // This is the ok button
    Widget ok = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // show the alert dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ระวัง!"),
          content: Text("กรุณาใส่พาสเวิดให้ตรง!"),
          actions: [
            ok,
          ],
          elevation: 5,
        );
      },
    );
  }
}
