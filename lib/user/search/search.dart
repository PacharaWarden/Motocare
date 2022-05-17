import 'package:changrode/model/machanic.dart';
import 'package:changrode/user/appointment/appoint1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../login_control.dart';

// ignore: camel_case_types
class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

// ignore: camel_case_types
class _searchState extends State<search> {
  late Future<List<Machanic>> machanicchoose = Future.value([]);
  late List<Machanic> value;
  final controller = Get.put(LoginController());

  @override
  void initState() {
    machanicchoose = Getmachanic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("เลือกช่าง"),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: FutureBuilder<List<Machanic>>(
                      future: machanicchoose,
                      builder: (context, snapshot) {
                        if (snapshot.data.toString() == "[]") {
                          return const Center(
                            child: Text("ยังไม่มีช่าง"),
                          );
                        } else if (snapshot.hasData) {
                          value = snapshot.data!;
                          return ListView.builder(
                            itemCount: value.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Appointment();
                                  }));
                                },
                                icon: Image.network(
                                  controller.googleAccount.value?.photoUrl ??
                                      '',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(value[index].mfName),
                              ));
                            },
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      })),
            ],
          ),
        ));
  }
}
