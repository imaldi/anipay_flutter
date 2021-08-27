import 'package:anipay_flutter/logic_layer/navigation_helper.dart';
import 'package:anipay_flutter/presentation_layer/screens/lainnya_screen.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AniPay")),
        actions: [Container(margin: EdgeInsets.all(size_medium), child: Icon(Icons.ac_unit))],
      ),
      drawer: Drawer(
        child: // Populate the Drawer in the next step.
            ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 220,
              child: DrawerHeader(
                // decoration: BoxDecoration(
                //   color: Colors.blue,
                // ),
                child: Column(
                  children: [
                    SizedBox(
                      width: size_huge,
                      height: size_huge,
                      child: Icon(Icons.person),
                    ),
                    Text('Aldi Irsan Majid'),
                    Text('000000001010101'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(size_medium),
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(size_normal),
                                    side: BorderSide(color: Colors.blueAccent)))),
                            onPressed: () {
                              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                            },
                            child: Text(
                              "PROFIL",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                navigateTo(context, SettingScreen());
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.star_border),
              title: const Text('Rate aniPay'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: const Text('Hubungi Kami'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: const Text('Tentang'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Keluar'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "aniPay",
                  style: TextStyle(fontSize: size_huge),
                )
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
              margin: EdgeInsets.all(size_medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                              padding: EdgeInsets.all(size_normal),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SALDO ANIPAY",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.money),
                                          Text("TRANSFER"),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.qr_code),
                                          Text("QR CODE"),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.history),
                                          Text("RIWAYAT"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(size_medium),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(Icons.phone_android),
                                  Text(
                                    "PULSA PRABAYAR",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(Icons.money),
                                  Text("TOP UP OVO"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(Icons.lightbulb_outline),
                                  Text("TOKEN LISTRIK"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(size_medium),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(Icons.local_hospital_outlined),
                                  Text(
                                    "BPJS KESEHATAN",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(Icons.water),
                                  Text("PDAM"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => LainnyaScreen()));
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.widgets),
                                    Text("LAINNYA"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(size_big),
                    child: Row(
                      children: [
                        Text("ARTIKEL"),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
