import 'package:changrode/page1/meclogin.dart';
import 'package:changrode/page1/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:changrode/page1/Login.dart';
import 'package:flutter/widgets.dart';

class navebar extends StatefulWidget {
  const navebar({Key? key}) : super(key: key);

  @override
  State<navebar> createState() => _navebarState();
}

class _navebarState extends State<navebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                  )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.add_box),
            title: Text('register'),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return register();
            })),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('login'),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            })),
          ),
          Divider(),
          ListTile(
            title: Text('สมัครช่าง'),
            leading: Icon(Icons.exit_to_app),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return meclogin();
            })),
          ),
        ],
      ),
    );
  }
}
