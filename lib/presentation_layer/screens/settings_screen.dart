import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/logic_layer/functions/function_types.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_dropdown_button.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var itemDropdownValues = ["Pilih Alat", "Alat A", "Alat B", "Alat C"];
  String selectedItem = "";
  @override
  void initState() {
    selectedItem = itemDropdownValues[0];
    super.initState();
  }

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
                  "BLUETOOTH PRINTER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.black,
                ),
                Text("Daftar Alat"),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: MyDropdownButton(
                        itemDropdownValues,
                        giveStringValue,
                        isEnabled: true,
                        value: selectedItem,
                        onItemTapped: (value) {
                          selectedItem = value;
                        },
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(size_medium),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              Text(
                                "Cari Alat",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size_huge,
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
                          "SIMPAN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(primaryRed),
                        ),
                        onPressed: () {},
                        child: Text(
                          "HAPUS",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(primaryGrey),
                        ),
                        onPressed: () {},
                        child: Text(
                          "TEST PRINT",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
