import 'package:anipay_flutter/presentation_layer/screens/home_screen.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(size_huge),
            child: Column(
              children: [
                SizedBox(
                  height: size_huge * 2,
                ),
                Text(
                  "AniPay",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: size_huge * 2,
                ),
                Container(
                  padding: EdgeInsets.all(size_small),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "No Handphone",
                        fillColor: Colors.blueAccent),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(size_small),
                  child: TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        hintText: "Kata Sandi",
                        fillColor: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(size_medium),
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.white)))),
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                          },
                          child: Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Belum Punya Akun?",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(size_medium),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF87E2FF)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Color(0xFF87E2FF))))),
                          onPressed: () {},
                          child: Text(
                            "DAFTAR",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size_huge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size_medium,
                    ),
                    Text(
                      "Lupa Kata Sandi?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "v2.17",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
