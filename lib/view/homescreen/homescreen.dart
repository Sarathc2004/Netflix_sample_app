import 'package:flutter/material.dart';

import 'package:netflix1/database/db.dart';

import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/utils/image_constant/image_constant.dart';

import 'package:netflix1/view/splash_screen/widgets/username_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

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
                  height: 70,
                  width: 500,
                  color: colorconstant.primaryblack,
                )),
                Positioned(
                    left: 50,
                    right: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Image.asset(Imageconstant.mylogo),
                      ),
                    )),
                Positioned(
                    bottom: 25,
                    right: 20,
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.edit,
                        color: colorconstant.primarywhite,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
              ),
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Mainlist.profilelist.length + 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => index ==
                          Mainlist.mainlist.length
                      ? Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            CircleAvatar(
                              radius: 30,
                              child: Icon(
                                Icons.add,
                                color: colorconstant.primaryblack,
                                size: 40,
                              ),
                              backgroundColor: colorconstant.primarywhite,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Add profiles",
                              style:
                                  TextStyle(color: colorconstant.primarywhite),
                            )
                          ],
                        )
                      : Usernamecard(index: index)),
            ),
          ],
        ),
      ),
    );
  }
}
