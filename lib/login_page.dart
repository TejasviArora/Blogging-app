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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
          child: Column(
            children: [
              Image.asset("assets/images/welcome.png", width: double.infinity),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 0),
                child: Text(
                  "LOGIN!",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3A9A66), //Color(0xFF03045E),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                child: TextInputs(
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
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: TextInputs(
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
              ),
              // Text(name),
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BlogScreen()));
                  },
                  child: Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xff3A9A66),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do not have an account? ",
                      style: TextStyle(
                        color: Color(0xff3A9A66),
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xff3A9A66),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
