import 'package:blogging_app/user_profile.dart';
import 'package:flutter/material.dart';

import 'package:blogging_app/constants.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45b679),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text("LATEST BLOG ⚡️",
      //       style: TextStyle(color: Colors.black, fontSize: 25)),
      //   actions: [
      //     InkWell(
      //         onTap: () {
      //           Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => UserProfile()));
      //         },
      //         child: Text("🧙🏻", style: TextStyle(fontSize: 25))),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Latest Article ⚡️",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UserProfile()));
                          },
                          child: Icon(Icons.account_box_rounded, size: 35)
                          // Text(
                          //   "🧙🏻",
                          //   style: TextStyle(fontSize: 25),
                          // ),
                          ),
                      //Icon(Icons.clear_all),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  BlogCard(
                      title:
                          'Why should you visit Moroccon desert this summers?',
                      posterImage: 'assets/images/moutains.jpg'),
                  SizedBox(
                    height: 12,
                  ),
                  BlogCard(
                      title: "Why should you never go there in Monsoons!",
                      posterImage: "assets/images/sea.jpg"),
                  SizedBox(
                    height: 12,
                  ),
                  BlogCard(
                      title: "Why should you never go there in Monsoons!",
                      posterImage: "assets/images/desert.jpg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final String title;
  final String posterImage;

  const BlogCard({
    Key? key,
    required this.title,
    required this.posterImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5))),
          width: double.infinity,
          height: 310,
        ),
        Container(
          child: Card(
            child: Image.asset(
              posterImage,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(290, 180, 15, 25),
          child: CircleAvatar(
            backgroundColor: Colors.transparent.withOpacity(0.5),
            radius: 25,
            child: Image.asset(
              "assets/images/avatarBGremoved.png",
            ), //Text
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(330, 15, 25, 180),
          child: Icon(Icons.favorite_border),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 255, 0, 10),
          child: Text(
            title,
            style: kTextStyle,
          ),
        ),
      ],
    );
  }
}
