import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var nameController = TextEditingController();
  var loketController = TextEditingController();
  var nohpController = TextEditingController();
  var emailController = TextEditingController();
  var alamatController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Registrasi User")),
          actions: [Container(margin: EdgeInsets.all(size_medium))],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(size_medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text("Daftar Sekarang!"),
            Text("Masukkan data diri kamu untuk memulai"),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: MyTextField(
                    decoration: InputDecoration(labelText: "Masukkan nama lengkap *",
                        prefixIcon: Icon(Icons.person),

                        border: OutlineInputBorder(
                    // borderSide:
                    //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(size_normal),
                  )), controller: nameController,enabled: true,),
                ),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: MyTextField(
                    decoration: InputDecoration(labelText: "Masukkan nama loket *",
                        prefixIcon: Icon(Icons.cases_rounded),

                        border: OutlineInputBorder(
                          // borderSide:
                          //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(size_normal),
                        )), controller: loketController,enabled: true,),
                ),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: MyTextField(
                    inputType: TextInputType.phone,
                    decoration: InputDecoration(labelText: "Masukkan nomor handphone *",
                        prefixIcon: Icon(Icons.phone_android),

                        border: OutlineInputBorder(
                          // borderSide:
                          //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(size_normal),
                        )), controller: nohpController,enabled: true,),
                ),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: MyTextField(
                    decoration: InputDecoration(labelText: "Masukkan email *",
                        prefixIcon: Icon(Icons.mail),

                        border: OutlineInputBorder(
                          // borderSide:
                          //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(size_normal),
                        )), controller: nameController,enabled: true,),
                ),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: MyTextField(
                    maxLine: null,
                    decoration: InputDecoration(
                        labelText: "Masukkan alamat",
                        prefixIcon: Icon(Icons.home),

                        border: OutlineInputBorder(
                          // borderSide:
                          //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(size_normal),
                        )), controller: alamatController,enabled: true,),
                ),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: TextField(
                    obscureText: isObscurePassword,
                    decoration: InputDecoration(labelText: "Masukkan password *",
                        suffixIcon:  InkWell(onTap:(){
                          setState(() {
                            isObscurePassword = !isObscurePassword;
                          });
                        },child: Icon(isObscurePassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye)),

                        border: OutlineInputBorder(
                          // borderSide:
                          //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(size_normal),
                        )), controller: passwordController,enabled: true,),
                ),
                Container(
                  padding: EdgeInsets.all(size_normal),
                  child: TextField(
                    obscureText: isObscurePassword,
                    decoration: InputDecoration(labelText: "Masukkan password *",
                        suffixIcon:  InkWell(onTap:(){
                          setState(() {
                            isObscurePassword = !isObscurePassword;
                          });
                        },child: Icon(isObscurePassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye)),

                        border: OutlineInputBorder(
                          // borderSide:
                          //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(size_normal),
                        )), controller: confirmPasswordController,enabled: true,),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        width: widthScreen(context),
                        child: ElevatedButton(
                          child: MyText("Kirim"),
                          onPressed: () {

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

          ],),),
        ));
  }
}
