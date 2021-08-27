import 'dart:ui';

import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText(this.text,
      {Key? key, this.color, this.size, this.margin, this.padding, this.overflow, this.textAlign, this.bold})
      : super(key: key);
  String text;
  Color? color;
  double? size;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  TextAlign? textAlign;
  TextOverflow? overflow;
  FontWeight? bold;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: Text(
        text,
        softWrap: true,
        overflow: overflow,
        textAlign: textAlign ?? TextAlign.center,
        style: TextStyle(fontWeight: bold, color: color ?? Colors.white, fontSize: size),
      ),
    );
  }
}

Widget titleText(String text) {
  return Container(
    margin: EdgeInsets.all(size_small),
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: size_medium),
    ),
  );
}

Widget subtitleText(String text) {
  return Container(
    margin: EdgeInsets.all(size_small),
    child: Text(
      text,
      style: TextStyle(color: primaryDarkGrey),
    ),
  );
}
