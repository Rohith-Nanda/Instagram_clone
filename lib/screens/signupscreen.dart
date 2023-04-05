import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/resources/authmethods.dart';
import 'package:instagram_clone/utils/colors.dart';
import '../widgets/textfeild.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final biocontroller = TextEditingController();
  final usernamecontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    biocontroller.dispose();
    usernamecontroller.dispose();
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
          Flexible(
            child: Container(),
            flex: 2,
          ),
          SvgPicture.asset(
            'assets/ic_instagram.svg',
            color: primaryColor,
            height: 64,
          ),
          SizedBox(height: 34),
          //circular avatar
          Stack(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/a/aa/TechCrunch_Disrupt_2019_%2848834853256%29_%281%29.jpg'),
              ),
              Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_a_photo)))
            ],
          ),
          SizedBox(height: 24),
          //username
          Textforminput(
              texteditingcontroller: usernamecontroller,
              hintText: "enter username",
              textInputType: TextInputType.emailAddress),
          //email
          SizedBox(height: 24),
          Textforminput(
              texteditingcontroller: emailcontroller,
              hintText: "enter email",
              textInputType: TextInputType.emailAddress),
          //bio
          SizedBox(height: 24),
          Textforminput(
              texteditingcontroller: biocontroller,
              hintText: "enter bio",
              textInputType: TextInputType.emailAddress),
          //password
          SizedBox(height: 24),
          Textforminput(
            texteditingcontroller: passwordcontroller,
            hintText: "enter password",
            textInputType: TextInputType.text,
            ispass: true,
          ),
          SizedBox(height: 24),
          //login button
          InkWell(
            onTap: ()async{
               String res = await Authmethods().signupUser(
                email: emailcontroller.text,
                password: passwordcontroller.text,
                username: usernamecontroller.text,
                bio: biocontroller.text);
                print(res);
            },
            child: Container(
              child: Text("Log In"),
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  color: blueColor),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Flexible(
            child: Container(),
            flex: 2,
          ),
          //signup

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("already have an account?"),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "Signin",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}
