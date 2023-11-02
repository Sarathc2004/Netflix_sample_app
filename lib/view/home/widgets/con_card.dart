import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';

class concard extends StatelessWidget {
  const concard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 132,
        width: 102,
        color: Color.fromARGB(255, 64, 64, 64),
        child: Column(
          children: [
            Container(
                height: 100,
                width: 102,
                color: colorconstant.primarywhite,
                child: Image.asset(
                  Mainlist.containerlist1[index],
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 30,
              width: 102,
              color: Color.fromARGB(255, 19, 19, 19),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 1),
                    child: Icon(
                      Icons.info_outline,
                      color: colorconstant.primarywhite,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: colorconstant.primarywhite,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
