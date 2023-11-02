import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/view/bottom_nav/bottom_nav.dart';
import 'package:netflix1/view/home/home.dart';

class Usernamecard extends StatelessWidget {
  const Usernamecard(
      {super.key, required this.index, this.height = 95, this.width = 100});
  final int index;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: 59,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorconstant.primaryblack),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNav(),
                ),
              );
            },
            child: Container(
              color: colorconstant.primaryblack,
              height: height,
              width: width,
              child: Image.asset(
                Mainlist.mainlist[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            Mainlist.profilelist[index],
            style: TextStyle(color: colorconstant.primarywhite),
          )
        ],
      ),
    );
  }
}
