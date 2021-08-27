import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/logic_layer/functions/function_types.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TentangScreen extends StatefulWidget {
  const TentangScreen({Key? key}) : super(key: key);

  @override
  _TentangScreenState createState() => _TentangScreenState();
}

class _TentangScreenState extends State<TentangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tentang"),
          actions: [Container()],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(size_medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "aniPay",
                      style: TextStyle(fontSize: size_huge, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size_huge,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed laoreet sapien. Sed tincidunt diam sem, vitae dapibus nisi pretium eget. In eu sapien molestie, condimentum nisl sed, cursus nisi. Morbi diam risus, faucibus et lobortis et, scelerisque a tellus. Pellentesque finibus pellentesque arcu, ut fringilla purus ullamcorper in. Sed tristique rutrum tincidunt. Aliquam urna diam, accumsan in euismod quis, iaculis ac magna. Nam rutrum suscipit ante sed vulputate. Phasellus sagittis sem sit amet feugiat tempor. Nunc tortor mauris, maximus vel pellentesque quis, varius a leo. Aliquam erat volutpat. Aliquam sagittis sodales varius. Proin lacinia nec turpis ac placerat. Integer orci dui, bibendum ut orci in, viverra porta justo. Praesent sit amet pharetra magna, vitae facilisis erat.",
                  softWrap: true,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size_huge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\u00a9 2019 aniPay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "All Right Reserved",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size_huge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Powered by Karya Anilo",
                      style: TextStyle(color: primaryGrey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
