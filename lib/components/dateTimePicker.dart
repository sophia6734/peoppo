import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DateTimePicker extends StatefulWidget {
  //const DateTimePicker({Key? key}) : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: CupertinoDatePicker(
        initialDateTime: _dateTime,
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (datetime) {
          setState(() {
            _dateTime = datetime;
          });
        },
      ),
    );
  }
}
