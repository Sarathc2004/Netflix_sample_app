import 'package:flutter/material.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';

class Downloadscreen extends StatelessWidget {
  const Downloadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primaryblack,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Smart Downloads",
                style: TextStyle(color: colorconstant.primarywhite),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Indroducing Downloads For You",
                style: TextStyle(
                    color: colorconstant.primarywhite, fontSize: 19.63)),
            SizedBox(
              height: 5,
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
                style: TextStyle(
                  color: colorconstant.primarywhite,
                  fontSize: 10.78,
                )),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 86, 85, 85),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 40,
                width: 500,
                child: ElevatedButton(onPressed: () {}, child: Text("SETUP"))),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 50),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 33,
                  width: 250,
                  color: Color.fromARGB(255, 86, 85, 85),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 7),
                    child: Text(
                      "Find Something to Download",
                      style: TextStyle(
                          color: colorconstant.primarywhite, fontSize: 15),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
