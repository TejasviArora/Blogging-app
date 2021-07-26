import 'package:blogging_app/app_icons.dart';
import 'package:blogging_app/blog_screen.dart';
import 'package:flutter/material.dart';

import 'package:blogging_app/constants.dart';
import 'app_icons.dart';

class UserProfile extends StatelessWidget {
  List<String> userProfileSettingHeading = [
    "Personal Data",
    "Settings",
    "E-Statement",
    "Refferal Code",
    "FAQs",
    "Our Handbook",
    "Commmunity"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   //centerTitle: Text("PROFILE"),
      // ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlogScreen()));
                    },
                    child: Icon(Icons.arrow_left_outlined,
                        color: Colors.black, size: 50)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 45, 0, 0),
                child: Text(
                  "User Profile",
                  style: kTextStyle.copyWith(fontSize: 30),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Image.asset("assets/images/squareAvatar.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 23, 0),
                  child: Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Tejasvi Arora",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Flutter Developer",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff3A9A66), //Colors.black54,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.black12,
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[0],
            icon: Icon(
              Icons.account_box,
            ),
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[1],
            icon: Icon(Icons.settings),
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[2],
            icon: Icon(Icons.pending),
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[3],
            icon: Icon(Icons.favorite_outline_rounded),
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[4],
            icon: Icon(Icons.edit),
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[5],
            icon: Icon(Icons.book),
          ),
          UserSettingTile(
            headingTitle: userProfileSettingHeading[6],
            icon: Icon(Icons.group),
          ),
        ],
      ),
    );
  }
}

class UserSettingTile extends StatelessWidget {
  final String headingTitle;
  final Icon icon;

  const UserSettingTile(
      {Key? key, required this.headingTitle, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.transparent,
          child: Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: 35,
                    height: 35,
                    child: icon,
                    decoration: BoxDecoration(
                      color: Color(0xff3A9A66).withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    headingTitle,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                //Icon(Icons.chevron_right_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
