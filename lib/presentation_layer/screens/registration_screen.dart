import 'package:anipay_flutter/data_layer/consts/color_consts.dart';
import 'package:anipay_flutter/data_layer/model/user_register_anipay_request.dart';
import 'package:anipay_flutter/data_layer/size_const.dart';
import 'package:anipay_flutter/logic_layer/cubit/auth/auth_cubit.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text.dart';
import 'package:anipay_flutter/presentation_layer/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget registrationScreen(){
  return BlocProvider(create: (_) => AuthCubit(),child: RegistrationScreen(),);
}

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
  AuthCubit? authCubit;

  @override
  void initState() {
    authCubit = context.read<AuthCubit>();
    super.initState();
  }
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
            child: Builder(
              builder: (BuildContext context) {
                var authCubitState = context.watch<AuthCubit>().state;
                UserRegistrationAnipayRequest _userRegistrationAnipayRequest = context.watch<AuthCubit>().state.registerRequest ?? UserRegistrationAnipayRequest();

                return Column(
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
                    )), controller: nameController,
                      enabled: true,
                    onChanged: (val){
                        authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(namalengkap: nameController.text));
                    },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(size_normal),
                    child: MyTextField(
                      onChanged: (val){
                        authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(namaloket: loketController.text));
                      },
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
                      onChanged: (val){
                        authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(nomorhp: nohpController.text));
                      },
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
                      onChanged: (val){
                        authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(email: emailController.text));
                      },
                      decoration: InputDecoration(labelText: "Masukkan email *",
                          prefixIcon: Icon(Icons.mail),

                          border: OutlineInputBorder(
                            // borderSide:
                            //     BorderSide(color: Colors.black, width: 20.0, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(size_normal),
                          )), controller: emailController,enabled: true,),
                  ),
                  Container(
                    padding: EdgeInsets.all(size_normal),
                    child: MyTextField(
                      onChanged: (val){
                        authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(alamatlengkap: alamatController.text));
                      },
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
                      onChanged: (val){
                        authCubit?.updateRegisterPasswordOrConfirmationPassword(password: passwordController.text);
                        // authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(password: confirmPasswordController.text));
                      },
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
                      onChanged: (val){
                        authCubit?.updateRegisterPasswordOrConfirmationPassword(confirmPassword: confirmPasswordController.text);
                        // authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(password: confirmPasswordController.text));
                      },
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
                              if(authCubitState.password == authCubitState.confPassword){
                                authCubit?.changeLocalRegisterRequest(_userRegistrationAnipayRequest.copyWith(password: passwordController.text));
                                context.read<AuthCubit>().registerUser();
                              }

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

          ],);
              },
            ),),
        ));
  }
}
