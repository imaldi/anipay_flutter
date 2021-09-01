import 'package:anipay_flutter/logic_layer/navigation_helper.dart';
import 'package:anipay_flutter/presentation_layer/screens/pdam_detail_page.dart';
import 'package:flutter/material.dart';

const LIST_DAERAH_STATIS = [
  "PDAM KAB BALANGAN",
  "PDAM KOT MALANG",
  "PDAM KOT BOGOR",
  "PDAM KAB BOGOR",
  'PDAM KOT BEKASI',
  'PDAM KAB BEKASI',
  'PDAM KOT PALEMBANG',
  'PDAM KOT JAMBI',
  'PDAM KOT BANDARLAMPUNG',
];

Widget pdamList() {
  return ListView.builder(
    itemCount: LIST_DAERAH_STATIS.length,
    padding: EdgeInsets.all(8),
    itemBuilder: (BuildContext context, int index) {
      var element = LIST_DAERAH_STATIS[index];
      return ListTile(title: Text("$element"),trailing: Icon(Icons.arrow_forward_ios),onTap: (){
        navigateTo(context, PDAMDetailScreen(pageTitle: '${element}',));
      },);
    },

  );
}
