import 'package:blogging_app/blog_screen.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'sign_up_page.dart';
import 'textinput_fields.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 // final image = AssetImage(bundle: "assets/images/blogicon.jpeg", package: 'blogging_app');


  final customController = TextEditingController();
  String name = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 25),
                  Text("Login",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              SizedBox(height: 150),
              Text(
                "Sign up with the following options",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black, //Color(0xFF03045E),
                ),
              ),
              SizedBox(height: 30),
              TextInputs(
                data: "Email",
                inputType: TextInputType.text,
                obscureText: false,
                customController: emailController,
                kValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextInputs(
                data: "Password",
                inputType: TextInputType.text,
                obscureText: true,
                customController: pwdController,
                kValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(name),
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BlogScreen()));
                  },
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  )),
                ),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFFC9483),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
