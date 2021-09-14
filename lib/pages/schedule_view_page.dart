import 'package:flutter/material.dart';
import 'package:schedule_table/widget/schedule_table.dart';


class ScheduleViewPage extends StatefulWidget {
  static const routeName = '/schedule';

  const ScheduleViewPage({Key? key}) : super(key: key);

  @override
  _ScheduleViewPageState createState() => _ScheduleViewPageState();
}

class _ScheduleViewPageState extends State<ScheduleViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule View Page'),
      ),
      body: ScheduleTable(),
    );
  }
}
