import 'package:flutter/material.dart';
import 'package:schedule_table/pages/calendar.dart';
import 'package:schedule_table/pages/schedule_view_page.dart';
import 'package:schedule_table/pages/settings_page.dart';
import 'package:schedule_table/size_config.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(title: "App Making", home: CalendarPage(), routes: {
          ScheduleViewPage.routeName: (ctx) => ScheduleViewPage(),
          SettingsPage.routeName: (ctx) => SettingsPage(),
        });
      });
    });
  }
}
