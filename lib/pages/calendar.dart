import 'package:flutter/material.dart';
import 'package:schedule_table/widget/app_drawer.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  static const routeName = '/calendar';

  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Calendar"),
        backgroundColor: Colors.red,
      ),
      body: Card(
        child: SfCalendar(

          view: CalendarView.week,
          firstDayOfWeek: 1,
        ),
      ),
    );
  }
}
