import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';

class Bigcontainer extends StatelessWidget {
  const Bigcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: Mainlist.bigconimagelist.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  Mainlist.bigconimagelist[index],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: colorconstant.primarywhite,
                          ),
                          Text(
                            "Remind Me",
                            style: TextStyle(
                              color: Color.fromARGB(255, 202, 201, 199),
                              fontSize: 9,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: colorconstant.primarywhite,
                            size: 30,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                                color: Color.fromARGB(255, 202, 201, 199),
                                fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Season 1 Coming December 14",
                  style: TextStyle(color: colorconstant.primarywhite),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tiny Pretty Things",
                  style: TextStyle(
                      color: colorconstant.primarywhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
                  style: TextStyle(color: colorconstant.primarywhite),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Steamy",
                      style: TextStyle(color: colorconstant.primarywhite),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: colorconstant.primarywhite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Soapy",
                    style: TextStyle(color: colorconstant.primarywhite),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: colorconstant.primarywhite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Slow Burn",
                    style: TextStyle(color: colorconstant.primarywhite),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: colorconstant.primarywhite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Suspenseful",
                    style: TextStyle(color: colorconstant.primarywhite),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: colorconstant.primarywhite,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Teen",
                    style: TextStyle(color: colorconstant.primarywhite),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: colorconstant.primarywhite,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Mystery",
                    style: TextStyle(color: colorconstant.primarywhite),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
