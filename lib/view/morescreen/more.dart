import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';

import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/view/splash_screen/widgets/username_card.dart';

class morescreen extends StatefulWidget {
  const morescreen({super.key});

  @override
  State<morescreen> createState() => _morescreenState();
}

class _morescreenState extends State<morescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primaryblack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: List.generate(
                  Mainlist.mainlist.length + 1,
                  (index) => index == Mainlist.mainlist.length
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 30, left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: colorconstant.primarywhite,
                                    width: 1)),
                            height: 60,
                            width: 65,
                            child: Icon(
                              Icons.add,
                              color: colorconstant.primarywhite,
                              size: 40,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Usernamecard(
                            index: index,
                            height: 60,
                            width: 65,
                          ),
                        )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: colorconstant.primarywhite,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Manage Profiles",
                style:
                    TextStyle(color: colorconstant.primarywhite, fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 273,
            width: double.infinity,
            color: Color.fromARGB(255, 37, 37, 37),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.message_sharp,
                        color: colorconstant.primarywhite,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Tell friends about Netflix.",
                        style: TextStyle(
                            color: colorconstant.primarywhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                        style: TextStyle(color: colorconstant.primarywhite),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Terms&Condition",
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 185, 181)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 38,
                            width: 270,
                            color: colorconstant.primaryblack,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              color: colorconstant.primarywhite,
                              height: 40,
                              width: 90,
                              child: Center(
                                child: Text(
                                  "Copy Link",
                                  style: TextStyle(
                                      color: colorconstant.primaryblack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/images/Group 93.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 2,
                              height: 40,
                              color: colorconstant.primarygrey,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/images/Group 92.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 2,
                              height: 40,
                              color: colorconstant.primarygrey,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/images/Group 94.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 2,
                              height: 40,
                              color: colorconstant.primarygrey,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                height: 50,
                                width: 35,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.more_horiz_outlined,
                                      color: colorconstant.primarywhite,
                                      size: 30,
                                    ),
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          color: colorconstant.primarywhite),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Icon(
                  Icons.done,
                  color: colorconstant.primarywhite,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "My List",
                  style: TextStyle(
                      color: colorconstant.primarywhite, fontSize: 15),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: colorconstant.primarygrey,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "App Settings",
              style: TextStyle(color: colorconstant.primarywhite, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Account",
              style: TextStyle(color: colorconstant.primarywhite, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Help",
              style: TextStyle(color: colorconstant.primarywhite, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Sign Out",
              style: TextStyle(color: colorconstant.primarywhite, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
