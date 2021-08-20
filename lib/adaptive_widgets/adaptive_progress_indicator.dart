import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveProgressIndicator extends StatelessWidget {
   final String os;

   const AdaptiveProgressIndicator({Key key, this.os}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (os == 'android') {
          return const CircularProgressIndicator();
        }
        return const CupertinoActivityIndicator();
      },
    );
  }
}
