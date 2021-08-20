import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptivePickDate extends StatelessWidget {
  final String os;
  final DateTime initialDate , firstDate, lastDate;
  final Function onDateChange ;

  const AdaptivePickDate({Key key, this.os, this.firstDate, this.lastDate, this.initialDate, this.onDateChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (os == 'android') {
          return DatePickerDialog(
            initialDate: initialDate,
            firstDate: firstDate,
            lastDate: lastDate,
          );
        }
        return CupertinoDatePicker(onDateTimeChanged: onDateChange);
      },
    );
  }
}
