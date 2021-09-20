import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var loketController = TextEditingController();
  var noRegController = TextEditingController();
  var noVaController = TextEditingController();
  var emailController = TextEditingController();
  var noPonselController = TextEditingController();
  var pekerjaanController = TextEditingController();
  var alamatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: size_huge),
          child: Column(
            children: [
              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(size_huge),
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
                )]),
              ),
              // TODO nanti buat padding content ini jadi default
              MyTextField(controller: loketController,decoration: InputDecoration(hintText: "Nama Loket",contentPadding: EdgeInsets.only(left: size_medium)),),
              MyTextField(controller: noRegController,decoration: InputDecoration(hintText: "No. Registrasi",contentPadding: EdgeInsets.only(left: size_medium)),),
              MyTextField(controller: noVaController,decoration: InputDecoration(hintText: "No. Va Mynt",contentPadding: EdgeInsets.only(left: size_medium)),),
              MyTextField(controller: emailController,decoration: InputDecoration(hintText: "Email",contentPadding: EdgeInsets.only(left: size_medium)),),
              MyTextField(controller: noPonselController,decoration: InputDecoration(hintText: "No. Ponsel",contentPadding: EdgeInsets.only(left: size_medium)),),
              MyTextField(controller: pekerjaanController,decoration: InputDecoration(hintText: "Pekerjaaan",contentPadding: EdgeInsets.only(left: size_medium)),),
              MyTextField(controller: alamatController,decoration: InputDecoration(hintText: "Alamat",contentPadding: EdgeInsets.only(left: size_medium)),),
              SizedBox(height: size_medium,),
              ListTile(leading: Icon(Icons.person),title: Text("Ubah Data"),trailing: Icon(Icons.arrow_forward_ios),),
              ListTile(leading: Icon(Icons.phone_android),title: Text("Ubah No. Handphone"),trailing: Icon(Icons.arrow_forward_ios),),
              ListTile(leading: Icon(Icons.lock),title: Text("Ubah Kata Sandi"),trailing: Icon(Icons.arrow_forward_ios),),
              ListTile(leading: Icon(Icons.pin),title: Text("Ubah Pin"),trailing: Icon(Icons.arrow_forward_ios),),
            ],
          )),
    ));
  }
}
