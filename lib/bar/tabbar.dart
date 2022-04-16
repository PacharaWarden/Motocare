import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("Moto Naja"),
          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Container(child: Text("hee")),
              Container(child: Icon(Icons.directions_transit)),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.green,
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "หน้าหลัก",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "ตั้งค่า",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
