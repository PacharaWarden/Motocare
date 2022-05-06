import 'package:changrode/model/machanic.dart';
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
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text("เลือกช่าง"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Expanded(
              child: FutureBuilder<List<Machanic>>(
                  future: machanicchoose,
                  builder: (context, snapshot) {
                    if (snapshot.data.toString() == "[]") {
                      return Center(
                        child: Text("ยังไม่มีช่าง"),
                      );
                    } else if (snapshot.hasData) {
                      value = snapshot.data!;
                      return ListView.builder(
                        itemCount: value.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                           
                            title:TextButton.icon(onPressed: (){}, icon: Image.network(""), label: Text(value[index].mfName))
                              

                              
                            
                          );
                        },
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  })),
        ));
  }
}
