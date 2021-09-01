import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:flutter/material.dart';

enum BayarTagihanListrik { pascabayar, non_tagihan}
class ListrikScreen extends StatefulWidget {
  const ListrikScreen({Key? key}) : super(key: key);

  @override
  _ListrikScreenState createState() => _ListrikScreenState();
}

class _ListrikScreenState extends State<ListrikScreen> {
  BayarTagihanListrik? _bayarMethod = BayarTagihanListrik.pascabayar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Listrik")),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ListTile(
                                title: const Text('PLN Pascabayar'),
                                leading: Radio<BayarTagihanListrik>(
                                  value: BayarTagihanListrik.pascabayar,
                                  groupValue: _bayarMethod,
                                  onChanged: (BayarTagihanListrik? value) {
                                    setState(() {
                                      _bayarMethod = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text('PLN Non Tagihan'),
                                leading: Radio<BayarTagihanListrik>(
                                  value: BayarTagihanListrik.non_tagihan,
                                  groupValue: _bayarMethod,
                                  onChanged: (BayarTagihanListrik? value) {
                                    setState(() {
                                      _bayarMethod = value;
                                    });
                                  },
                                ),
                              ),
                            ),

                          ],
                        ),
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
