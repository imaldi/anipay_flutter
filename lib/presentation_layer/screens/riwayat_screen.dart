import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:flutter/material.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({Key? key}) : super(key: key);

  @override
  _RiwayatScreenState createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Riwayat")),
        actions: [Container(margin: EdgeInsets.all(size_medium), child: Icon(Icons.ac_unit))],
      ),
      body: Container(
        padding: EdgeInsets.all(size_medium),
        child: Text("Tidak Ada Riwayat yang Ditemukan"),
      ),
    );
  }
}
