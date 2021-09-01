import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PDAMDetailScreen extends StatefulWidget {
  PDAMDetailScreen({Key? key, required this.pageTitle}) : super(key: key);
  final String pageTitle;

  @override
  _PDAMDetailScreenState createState() => _PDAMDetailScreenState();
}

class _PDAMDetailScreenState extends State<PDAMDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("${widget.pageTitle}")),
        actions: [Container(margin: EdgeInsets.all(size_medium))],
      ),
      body: Container(
        padding: EdgeInsets.all(size_medium),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android),
                  ],
                ),
                title: titleText("Nomor Pelanggan"),
                subtitle: Container(
                    margin: EdgeInsets.only(bottom: size_normal),
                    child: TextField(
                      keyboardType: TextInputType.number,
                    )),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Icon(Icons.import_contacts),
                //   ],
                // ),
              ),
            ),
            SizedBox(
              height: size_medium,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(primaryDarkBlue),
                    ),
                    onPressed: () {},
                    child: Text(
                      "LANJUT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
