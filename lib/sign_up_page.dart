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
      // resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        // child: Icon(
                        //   Icons.shopping_bag,
                        //   color: Colors.white,
                        // ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF101010),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Colors.white30,
                            width: 1,
                          )),
                    ),
                    SizedBox(width: 25),
                    Text("Sign Up",
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                SizedBox(height: 100),
                Text(
                  "Sign up with the following options",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white24,
                  ),
                ),
                SizedBox(height: 0),
                SizedBox(height: 40),
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
                      "Sign Up",
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
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a acount? ",
                      style: TextStyle(
                        color: Colors.white,
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
          ),
        ),
      ),
    );
  }
}
