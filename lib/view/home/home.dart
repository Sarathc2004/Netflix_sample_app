import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/utils/image_constant/image_constant.dart';

import 'package:netflix1/view/home/widgets/con2_card.dart';
import 'package:netflix1/view/home/widgets/con_card.dart';
import 'package:netflix1/view/home/widgets/home_card.dart';
import 'package:netflix1/view/searchscreen/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primaryblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset(
                      Imageconstant.homelogo,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(Imageconstant.nlogo),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                          color: colorconstant.primarywhite,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Movies",
                        style: TextStyle(color: colorconstant.primarywhite),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: colorconstant.primarywhite),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 100,
                  bottom: 0,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: colorconstant.primarywhite, width: 1)),
                        child: Column(
                          children: [
                            Text(
                              "Top",
                              style: TextStyle(
                                  fontSize: 6,
                                  color: colorconstant.primarywhite),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "10",
                              style: TextStyle(
                                  color: colorconstant.primarywhite,
                                  fontSize: 8),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "#2 in Nigeria Today",
                          style: TextStyle(color: colorconstant.primarywhite),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 70,
              width: 550,
              color: colorconstant.primaryblack,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: colorconstant.primarywhite,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: colorconstant.primarywhite),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: colorconstant.primarywhite,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Icon(Icons.play_arrow_rounded),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: colorconstant.primarywhite,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(color: colorconstant.primarywhite),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Homecard(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Continue Watching for Emenalo",
                    style: TextStyle(
                        color: colorconstant.primarywhite, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(Mainlist.containerlist1.length,
                        (index) => concard(index: index)),
                  ),
                ),
              ],
            ),
            con2card(),
          ],
        ),
      ),
    );
  }
}
