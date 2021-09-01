import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:flutter/material.dart';

class PaketDataScreen extends StatefulWidget {
  const PaketDataScreen({Key? key}) : super(key: key);

  @override
  _PaketDataScreenState createState() => _PaketDataScreenState();
}

class _PaketDataScreenState extends State<PaketDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Paket Data")),
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
                title: titleText("Nomor Handphone"),
                subtitle: Container(margin: EdgeInsets.only(bottom: size_normal), child: TextField()),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.import_contacts),
                  ],
                ),
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
