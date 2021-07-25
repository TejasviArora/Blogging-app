import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment(-0.1, -0.55),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                child: Center(
                  child: Text(
                    'Welcome to ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 200,
                height: 200,
                child: Image.asset("assets/images/blogicon.jpeg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'tap .blog to continue!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyInterestContainer extends StatelessWidget {
  final String interest;
  const MyInterestContainer({
    required this.interest,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF292929),
        boxShadow: [
          BoxShadow(
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.black,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Center(
          child: Text(interest,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600))), //BoxShadow
    );
  }
}


  //now.year, now.month, now.day, 
//"${selectedDate.toLocal()}".split(' ')[0]
//${selectedTime.hour}:${selectedTime.minute}
//start is shown with green
//stop with green