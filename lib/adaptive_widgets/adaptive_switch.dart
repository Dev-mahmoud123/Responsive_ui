import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveSwitch extends StatelessWidget {
  final String os;
  final bool value;
  final Function onChanged;

  const AdaptiveSwitch({Key key, this.os, this.value, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context){
        if(os == 'android'){
          return Switch(value: value, onChanged: onChanged,);
        }
        return CupertinoSwitch(value:value , onChanged:onChanged );
      },
    );
  }
}
