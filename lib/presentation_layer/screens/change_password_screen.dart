import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Container(
      padding: EdgeInsets.all(size_medium),
      child: Column(
        children: [
          Text("Test"),
          Container(
              padding: EdgeInsets.all(size_medium),
              child: TextField(decoration: InputDecoration(hintText: "Sandi Lama"),)),
          Container(
              padding: EdgeInsets.all(size_medium),
              child: TextField(decoration: InputDecoration(hintText: "Sandi Baru"),)),
          Container(
              padding: EdgeInsets.all(size_medium),
              child: TextField(decoration: InputDecoration(hintText: "Konfirmasi Sandi Baru"),)),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  width: widthScreen(context),
                  child: ElevatedButton(
                    child: MyText("Kirim"),
                    onPressed: () {
                      // if(authCubitState.password == authCubitState.confPassword){
                      //   authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(password: passwordController.text));
                      //   context.read<AuthCubit>().registerUser((){
                      //     // navigateTo(context, HomeScreen());
                      //     navigatorPop(context);
                      //   });
                      // }

                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size_normal)),
                      primary: primaryColor,
                      side: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),)));
  }
}
