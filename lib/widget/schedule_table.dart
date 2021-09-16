import 'package:flutter/material.dart';

import 'package:horizontal_data_table/refresh/non_bounce_back_scroll_physics.dart';
import 'package:schedule_table/models/schedule.dart';
import 'package:schedule_table/providers/schedule_data.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleTable extends StatefulWidget {
  final Schedule scheduleData;
  const ScheduleTable({Key? key, required this.scheduleData}) : super(key: key);

  @override
  _ScheduleTableState createState() => _ScheduleTableState();
}

class _ScheduleTableState extends State<ScheduleTable> {
  int? sortColumnIndex;
  bool isAscending = false;

  // @override
  // void initState() {
  //   super.initState();

  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.horizontal, child: buildDataTable()),
      );

  Widget buildDataTable() {
    final List<String> _namesList = widget.scheduleData.data.keys.toList();
    final _title = widget.scheduleData.title;
    final _schedules = widget.scheduleData.data.values.toList();
    final _startDate = widget.scheduleData.startDate;
    final _endDate = widget.scheduleData.endDate;
    final _listofDates = List.generate(
        _endDate!.difference(_startDate!).inDays + 1,
        (index) => _startDate.add(Duration(days: index)).day.toString());
    // final _listOfAbbrs = List.generate(_schedules.length, (index) => _schedules[0][index].notes.toString());

    // final _groupId
    var columnHeaders = ['Name'];
    columnHeaders.addAll(_listofDates);

    final rows = List.generate(_schedules.length, (index) {
      var rowItems = [_namesList[index]];
      final itemStartDates =
          _schedules[index].map((element) => element.startTime.day).toList();
      final items =
          _schedules[index].map((element) => element.notes.toString()).toList();
      final List<String> _listOfNotes = [];
      print(itemStartDates);
      print(items);
      _listofDates.forEach((date) {
        int itemIndex = -1;
        itemIndex = itemStartDates.indexWhere((d) => d == int.parse(date));
        print('Index: ' + itemIndex.toString());
        itemIndex == -1
            ? _listOfNotes.add('N/A')
            : _listOfNotes.add(items[itemIndex]);

        // int.parse(date) == _schedules[index].map((e) => e.startTime.day);
      });
      print(_listOfNotes);
      rowItems.addAll(_listOfNotes);
      return rowItems;
    });

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columnHeaders),
      rows: getRows(rows),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<DataRow> getRows(List<List<String>> rows) =>
      rows.map((List<String> rowItems) {
        final cells = rowItems;
        // final  ;

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<String> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();
}
