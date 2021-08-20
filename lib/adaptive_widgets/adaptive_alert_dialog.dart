import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveAlertDialog extends StatelessWidget {
  final String os;
  final String content, text;
  final List<Widget> actions;

  const AdaptiveAlertDialog(
      {Key key, this.os, this.content, this.text, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (os == 'android') {
          return AlertDialog(
            content: Text(content),
            title: Text(text),
            actions: actions,
          );
        }
        return CupertinoAlertDialog(
          title: Text(text),
          content: Text(content),
          actions: actions,
        );
      },
    );
  }
}
