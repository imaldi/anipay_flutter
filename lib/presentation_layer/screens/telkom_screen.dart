import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:flutter/material.dart';

enum BayarTagihanTelkom { telepon, telkomvision, indihome }
class TelkomScreen extends StatefulWidget {
  const TelkomScreen({Key? key}) : super(key: key);

  @override
  _TelkomScreenState createState() => _TelkomScreenState();
}

class _TelkomScreenState extends State<TelkomScreen> {
  BayarTagihanTelkom? _bayarMethod = BayarTagihanTelkom.telepon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Telkom")),
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
                                title: const Text('Telepon'),
                                leading: Radio<BayarTagihanTelkom>(
                                  value: BayarTagihanTelkom.telepon,
                                  groupValue: _bayarMethod,
                                  onChanged: (BayarTagihanTelkom? value) {
                                    setState(() {
                                      _bayarMethod = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text('Telkomvision'),
                                leading: Radio<BayarTagihanTelkom>(
                                  value: BayarTagihanTelkom.telkomvision,
                                  groupValue: _bayarMethod,
                                  onChanged: (BayarTagihanTelkom? value) {
                                    setState(() {
                                      _bayarMethod = value;
                                    });
                                  },
                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ListTile(
                                title: const Text('Indihome'),
                                leading: Radio<BayarTagihanTelkom>(
                                  value: BayarTagihanTelkom.indihome,
                                  groupValue: _bayarMethod,
                                  onChanged: (BayarTagihanTelkom? value) {
                                    setState(() {
                                      _bayarMethod = value;
                                    });
                                  },
                                ),
                              ),
                            ),

                          ],
                        )
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
