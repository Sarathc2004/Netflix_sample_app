import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/view/home/widgets/con2_card.dart';

class Homecard extends StatelessWidget {
  const Homecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorconstant.primaryblack,
      height: 160,
      width: 550,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Previews",
              style: TextStyle(color: colorconstant.primarywhite, fontSize: 20),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                    6,
                    (index) => Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: CircleAvatar(
                            backgroundColor: colorconstant.primaryblack,
                            radius: 50,
                            child: Image.asset(
                              Mainlist.rowlist[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))),
          ),
        ],
      ),
    );
  }
}
