import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/logic_layer/functions/function_types.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CallUsScreen extends StatefulWidget {
  const CallUsScreen({Key? key}) : super(key: key);

  @override
  _CallUsScreenState createState() => _CallUsScreenState();
}

class _CallUsScreenState extends State<CallUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pengaturan"),
          actions: [Container()],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(size_medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Di bawah ini adalah kontak kami yang Anda dapat hubungi jika ada pertanyaan terkait aplikasi ini.",
                  softWrap: true,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size_huge,
                ),
                Text(
                  "Hari Senin s.d Jum'at pukul 08:00 s.d 16:00 WIB",
                  softWrap: true,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size_huge,
                ),
                Text(
                  "Whatsapp / SMS",
                  style: TextStyle(color: primaryGrey),
                ),
                Text(
                  "+6282299296152",
                  style: TextStyle(color: primaryBlue, decoration: TextDecoration.underline),
                ),
                Divider(
                  color: primaryGrey,
                ),
                Text(
                  "Situs Web",
                  style: TextStyle(color: primaryGrey),
                ),
                Text(
                  "http://www.anilo.id",
                  style: TextStyle(color: primaryBlue, decoration: TextDecoration.underline),
                ),
                Divider(
                  color: primaryGrey,
                ),
              ],
            ),
          ),
        ));
  }
}
