import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/logic_layer/navigation_helper.dart';
import 'package:anipay_flutter/presentation_layer/screens/bpjs_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/gopay_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/internet_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/listrik_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/ovo_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/paket_data_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/pdam_index_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/pulsa_pascabayar_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/pulsa_prabayar_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/telkom_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/token_listrik_screen.dart';
import 'package:anipay_flutter/presentation_layer/screens/tv_berlangganan_screen.dart';
import 'package:flutter/material.dart';

class LainnyaScreen extends StatefulWidget {
  const LainnyaScreen({Key? key}) : super(key: key);

  @override
  _LainnyaScreenState createState() => _LainnyaScreenState();
}

class _LainnyaScreenState extends State<LainnyaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AniPay")),
        actions: [Container()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(size_medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
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
                      onTap: (){
                        navigateTo(context, GopayScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.account_balance_wallet),
                          Text("GOPAY"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateTo(context, PDAMIndexScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.water_outlined),
                          Text("PDAM"),
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
                      onTap:
                      (){
                        navigateTo(context, TokenListrikScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.lightbulb_outline),
                          Text(
                            "TOKEN LISTRIK",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateTo(context, PaketDataScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.network_cell),
                          Text("PAKET DATA"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateTo(context, BPJSScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.local_hospital),
                          Text(
                            "BPJS KESEHATAN",
                            textAlign: TextAlign.center,
                          ),
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
                      onTap: (){
                        navigateTo(context, TelkomScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.phone),
                          Text(
                            "TELKOM",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateTo(context, ListrikScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.lightbulb),
                          Text("LISTRIK"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateTo(context, OvoScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.money),
                          Text("OVO"),
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
                      onTap: (){
                        navigateTo(context, PulsaPascabayarScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.phone_android),
                          Text(
                            "PULSA PASCABAYAR",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateTo(context, TvBerlanggananScreen());
                      },
                      child: Column(
                        children: [
                          Icon(Icons.tv),
                          Text(
                            "TV BERLANGGANAN",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:(){
                        navigateTo(context, InternetScreen());
                      },child: Column(
                        children: [
                          Icon(Icons.wifi),
                          Text("INTERNET"),
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
                    child: Column(
                      children: [
                        Icon(Icons.money),
                        Text(
                          "MULTI FINANCE",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.money),
                        Text("E-MONEY"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.money),
                        Text("DANA"),
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
                        Icon(Icons.business_center_outlined),
                        Text("LINK AJA"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.attach_money),
                        Text("SHOPEEPAY"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    // Column(
                    //   children: [
                    //     Icon(Icons.access_alarm),
                    //     Text("tes"),
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
