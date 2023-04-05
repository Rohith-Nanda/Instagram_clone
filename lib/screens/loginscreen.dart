import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/textfeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //svg image
              Flexible(child: Container(),flex: 2,),
              SvgPicture.asset('assets/ic_instagram.svg',color: primaryColor,height: 64,),
              //email
              SizedBox(height: 64),
              Textforminput(texteditingcontroller: emailcontroller, hintText: "enter email", textInputType: TextInputType.emailAddress),
              //password
              SizedBox(height: 24),
              Textforminput(texteditingcontroller: passwordcontroller, hintText: "enter password", textInputType: TextInputType.text,ispass: true,),
               //login button
               SizedBox(height: 24),
               InkWell(
                onTap: () {
                  
                },
                 child: Container(
                  child: Text("Log In"),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4)
                      )),
                      color: blueColor),
                 ),
               ),
               SizedBox(height: 12,),
               Flexible(child: Container(),flex: 2,),
               //signup

               Row(
                mainAxisAlignment : MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("don't have an account?"),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      child: Text("Signup",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                  )
                ],
               )
            ],
          ),
        ) 
        )
    );
  }
}