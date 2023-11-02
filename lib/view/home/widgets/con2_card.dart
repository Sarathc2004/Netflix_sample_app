import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';

class con2card extends StatelessWidget {
  const con2card({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: Mainlist.containerlist2.length,
          itemBuilder: (context, index) => Container(
            height: 170,
            color: colorconstant.primaryblack,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Mainlist.headinglist[index],
                    style: TextStyle(
                        color: colorconstant.primarywhite, fontSize: 17),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        6,
                        (count) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 115,
                                width: 100,
                                child: Image.asset(
                                  Mainlist.containerlist2[index]["images"]
                                      [count],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
