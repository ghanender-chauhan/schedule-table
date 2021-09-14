import 'package:flutter/foundation.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Schedule with ChangeNotifier {
  String? id;
  String title;
  String? groupId;
  DateTime? startDate;
  DateTime? endDate;
  Map<String, List<Appointment>> data;

  Schedule({
    this.id,
    this.title = '',
    this.groupId,
    this.startDate,
    this.endDate,
    this.data = const {},
  });
}
