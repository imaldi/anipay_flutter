import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:flutter/material.dart';

import 'my_text.dart';

Future myConfirmDialog(
  BuildContext context, {
  String? basicContentString,
  String? title,
  String? positiveButtonText,
  String? negativeButtonText,
  Function? positiveButton,
  Function? negativeButton,
  Widget? customContent,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? "Confirm",
          ),
        ],
      ),
      content: customContent == null
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  basicContentString ?? "YUUHUUU"
                  // "$content",
                  // style: sansPro(fontWeight: FontWeight.w600, fontSize: 16),
                  ,
                  softWrap: true,
                ),
              ],
            )
          : customContent,
      actions: [
        Container(
          margin: EdgeInsets.all(size_normal),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  height: 45,
                  width: widthScreen(context),
                  child: ElevatedButton(
                    child: MyText(negativeButtonText ?? "No"),
                    onPressed: () {
                      negativeButton!();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size_normal)),
                      primary: primaryColor,
                      side: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(width: size_medium),
              Flexible(
                child: Container(
                  height: 45,
                  width: widthScreen(context),
                  child: ElevatedButton(
                    child: MyText(positiveButtonText ?? "Yes"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size_normal)),
                      primary: primaryColor,
                      side: BorderSide(color: primaryColor),
                    ),
                    onPressed: () {
                      positiveButton!();
                      // Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
