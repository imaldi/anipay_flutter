import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/logic_layer/functions/function_types.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_dropdown_button.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:flutter/material.dart';

const MultiFinanceOptions = [
  'ADIRA',
  'BAF',
  'FIF',
  'MAF',
  'MCF',
  'WOM'
];
class MultiFinanceScreen extends StatefulWidget {
  const MultiFinanceScreen({Key? key}) : super(key: key);

  @override
  _MultiFinanceScreenState createState() => _MultiFinanceScreenState();
}

class _MultiFinanceScreenState extends State<MultiFinanceScreen> {
  String currentOption = "INDOVISION";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TV Berlangganan")),
        actions: [Container(margin: EdgeInsets.all(size_medium))],
      ),
      body: Container(
        padding: EdgeInsets.all(size_medium),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(size_normal),
                          child: Text("Bayar Tagihan"),
                        ),
                        Divider(),
                        MyDropdownButton(MultiFinanceOptions, giveStringValue,isEnabled: true,value: currentOption,onItemTapped: (val){
                          setState(() {
                            currentOption = val;
                          });
                        },)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Card(
              child: ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android),
                  ],
                ),
                title: titleText("Nomor Pelanggan"),
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
