import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // AppBar(
          //   title: Text('User Name'),
          //   automaticallyImplyLeading: false,
          // ),

          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Manage Profile'),
          //   onTap: () {
          //     Navigator.of(context).popAndPushNamed('/manage_profile');
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).popAndPushNamed('/settings');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: Text('Schedule'),
            onTap: () {
              Navigator.of(context).popAndPushNamed('/schedule');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: Text('Calendar'),
            onTap: () {
              Navigator.of(context).popAndPushNamed('/calendar');
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
