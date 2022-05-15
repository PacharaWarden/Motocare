import 'package:changrode/model/machanic.dart';
import 'package:changrode/user/appointment/appoint1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  late Future<List<Machanic>> machanicchoose = Future.value([]);
  late List<Machanic> value;
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
                              return Appointment();
                            }));
                                      },
                                      icon: Image.network(
                                        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
                                        height: 32,
                                        width: 32,
                                      ),
                                      label: Text(value[index].mfName)));
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
