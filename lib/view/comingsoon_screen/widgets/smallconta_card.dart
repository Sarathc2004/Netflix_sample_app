import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';

class Smallcontainer extends StatelessWidget {
  const Smallcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: Mainlist.smallconimagelist.length,
          itemBuilder: (context, index) => Container(
            height: 80,
            width: double.infinity,
            color: Color.fromARGB(255, 86, 85, 85),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      height: 100,
                      width: 130,
                      child: Image.asset(
                        Mainlist.smallconimagelist[index],
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "New Arrivel",
                          style: TextStyle(color: colorconstant.primarywhite),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          Mainlist.smallsubtitlelist[index],
                          style: TextStyle(color: colorconstant.primarywhite),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "Nov 6",
                          style: TextStyle(
                              color: Color.fromARGB(255, 148, 145, 145),
                              fontSize: 12),
                        ),
                      ),
                    ],
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
