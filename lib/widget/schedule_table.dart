import 'package:flutter/material.dart';


import 'package:horizontal_data_table/refresh/non_bounce_back_scroll_physics.dart';
import 'package:schedule_table/models/schedule.dart';
import 'package:schedule_table/providers/schedule_data.dart';

class ScheduleTable extends StatefulWidget {
  const ScheduleTable({Key? key}) : super(key: key);

  @override
  _ScheduleTableState createState() => _ScheduleTableState();
}

class _ScheduleTableState extends State<ScheduleTable> {
  late List<Schedule> Schedules;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.schedules = List.of(ScheduleData);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScrollableWidget(child: buildDataTable()),
      );

  Widget buildDataTable() {
    final columns = ['id', 'title', 'groupId'];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(schedules),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            
          ))
      .toList();

  List<DataRow> getRows(List<Schedule> schedules) => schedules.map((Schedule schedule) {
        final cells = [schedule.id, schedule.title, schedule.groupId];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  