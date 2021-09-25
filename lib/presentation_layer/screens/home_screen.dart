import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/logic_layer/navigation_helper.dart';
import 'package:anipay_flutter/presentation_layer/screens/bpjs_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/call_us_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/lainnya_screen.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/screens/login_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/ovo_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/profile_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/pulsa_prabayar_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/riwayat_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/settings_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/tentang_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/token_listrik_screen.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pdam_index_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool logout = false;
  // var fromSharedPreference = "";
  // getSharedPref() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   setState(() {
  //   fromSharedPreference = sp.getString("ALDI") ?? "Failed";
  //
  //   });
  // }
  @override
  void initState() {
    // getSharedPref();
    super.initState();
  }
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
                              navigateTo(context, ProfileScreen());
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
                navigatorPop(context);
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
                navigateTo(context, CallUsScreen());
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: const Text('Tentang'),
              onTap: () {
                navigatorPop(context);

                navigateTo(context, TentangScreen());

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
              onTap: () async {
                await myConfirmDialog(context,
                    title: "Konfirmasi",
                    basicContentString: "Apakah Anda Ingin Log Keluar",
                    positiveButtonText: "Ya",
                    negativeButtonText: "Tidak", positiveButton: () async {
                  // navigatorPop(context);

                  setState(() {
                    logout = true;
                  });
                  // await navigateTo(context, LoginScreen());
                  print("positive");
                }, negativeButton: () {
                  navigatorPop(context);
                });
                if (logout) {
                  pushReplacement(context, LoginScreen());
                }
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
                                      InkWell(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      padding: EdgeInsets.all(size_medium),
                                                      child: ListTile(
                                                        // leading: new Icon(Icons.photo),
                                                        title: Text('Aktifkan Fitur Bayar Anda, gratis!'),
                                                        subtitle: Text(
                                                          'Nikmati Kemudahan pembayaran dan Transfer antar user sekarang. Ikuti langkah mudah untuk aktivasinya',
                                                          softWrap: true,
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.all(size_medium),
                                                      child: ListTile(
                                                        leading: new Icon(Icons.local_hospital_outlined),
                                                        title: new Text(
                                                          'Bayar dengan AniPay ke Merchant lebih mudah dan praktis',
                                                          softWrap: true,
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.all(size_medium),
                                                      child: ListTile(
                                                        leading: new Icon(Icons.refresh),
                                                        title: new Text(
                                                          'Transfer Saldo Anipay Anda ke Teman atau Mitra dengan lebih mudah dan aman',
                                                          softWrap: true,
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: TextButton(
                                                            style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty.all<Color>(primaryDarkBlue),
                                                            ),
                                                            onPressed: () {},
                                                            child: Text(
                                                              "AKTIVASI SEKARANG",
                                                              style: TextStyle(color: Colors.white),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              });
                                        },
                                        child: Column(
                                          children: [
                                            Icon(Icons.money),
                                            Text("TRANSFER"),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          myConfirmDialog(context,
                                              title: "Pemberitahuan",
                                              basicContentString: "Fitur Dalam Pengembangan",
                                              isSingleButton: true,
                                              positiveButtonText: "TUTUP",
                                              positiveButton: () {});
                                        },
                                        child: Column(
                                          children: [
                                            Icon(Icons.qr_code),
                                            Text("QR CODE"),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          navigateTo(context, RiwayatScreen());
                                        },
                                        child: Column(
                                          children: [
                                            Icon(Icons.history),
                                            Text("RIWAYAT"),
                                          ],
                                        ),
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
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, PulsaPrabayarScreen());
                                },
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
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, OvoScreen());
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.money),
                                    Text("TOP UP OVO"),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, TokenListrikScreen());
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.lightbulb_outline),
                                    Text("TOKEN LISTRIK"),
                                  ],
                                ),
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
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, BPJSScreen());
                                },
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
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, PDAMIndexScreen());
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.water),
                                    Text("PDAM"),
                                  ],
                                ),
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
                        // Text("fromSharedPreference: $fromSharedPreference"),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
