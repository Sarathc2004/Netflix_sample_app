import 'package:flutter/material.dart';
import 'package:netflix1/database/db.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';

class searchscreen extends StatelessWidget {
  const searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorconstant.primaryblack,
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromARGB(255, 86, 85, 85),
                  child: TextField(
                    style: TextStyle(color: colorconstant.primarywhite),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                      prefixIcon: Icon(
                        Icons.search,
                        color: colorconstant.primarywhite,
                      ),
                      hintText: "Search for a show,movie,genre,etc.",
                      hintStyle: TextStyle(color: colorconstant.primarywhite),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: colorconstant.primarywhite,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Top Searches",
                    style: TextStyle(
                        color: colorconstant.primarywhite,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: colorconstant.primaryblack,
                  child: Column(
                    children: List.generate(
                        Mainlist.searchimagelist.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                color: Color.fromARGB(255, 86, 85, 85),
                                child: Row(
                                  children: [
                                    Container(
                                      height: double.infinity,
                                      width: 150,
                                      child: Image.asset(
                                        Mainlist.searchimagelist[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                        height: 30,
                                        width: 100,
                                        child: Text(
                                          Mainlist.searchlist[index],
                                          style: TextStyle(
                                            color: colorconstant.primarywhite,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      height: double.infinity,
                                      width: 58,
                                      child: Icon(
                                        Icons.play_circle_outline,
                                        color: colorconstant.primarywhite,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
