import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/screens/pdam_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PDAMIndexScreen extends StatefulWidget {
  const PDAMIndexScreen({Key? key}) : super(key: key);

  @override
  _PDAMIndexScreenState createState() => _PDAMIndexScreenState();
}

class _PDAMIndexScreenState extends State<PDAMIndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PDAM")),
        actions: [Container(margin: EdgeInsets.all(size_medium), child: Icon(Icons.ac_unit))],
      ),
      body: Stack(
        children: [
          // SizedBox(height: size_huge,),
          Container(padding: EdgeInsets.only(top: size_huge),child: RefreshIndicator(onRefresh: () async {  },
          child: pdamList())),
          Positioned(
            child: Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(size_medium),
                child: Container(
                    padding: EdgeInsets.only(left: size_medium, right: size_medium),
                    color: Colors.white,
                    child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search)),))),
            top: 0,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}
