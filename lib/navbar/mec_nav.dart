import 'package:changrode/mechanic/job/homejob.dart';
import 'package:changrode/mechanic/profile/profile_mec.dart';
import 'package:changrode/mechanic/setting/setting.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Homepage_mec extends StatefulWidget {
  final int userId;
  const Homepage_mec({Key? key, required this.userId}) : super(key: key);

  @override
  State<Homepage_mec> createState() => _Homepage_mecState();
}

class _Homepage_mecState extends State<Homepage_mec> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      jobhome(userId: widget.userId),
      profile_mec(),
      const settingScreen(),
    ];
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle_notifications,
                color: Colors.orange,
                size: 35,
              ),
              label: 'Job'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 35,
              ),
              label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.red,
              size: 35,
            ),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTap,
      ),
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class _widgetOptions {
  static elementAt(int selectedIndex) {}
}
