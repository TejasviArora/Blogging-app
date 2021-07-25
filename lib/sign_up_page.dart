import 'package:blogging_app/blog_screen.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'textinput_fields.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/horse.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, bottom: 20),
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3A9A66), //Color(0xFF03045E),
                    ),
                  ),
                ),
                TextInputs(
                  data: "User Name",
                  inputType: TextInputType.text,
                  obscureText: false,
                  customController: userNameController,
                  kValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                TextInputs(
                  data: "Email",
                  inputType: TextInputType.emailAddress,
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
                SizedBox(height: 30),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlogScreen()));
                    },
                    child: Center(
                        child: Text(
                      "SIGN UP",
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
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a acount? ",
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
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Color(0xff3A9A66),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        )),
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
