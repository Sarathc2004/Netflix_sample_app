import 'package:flutter/material.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/view/comingsoon_screen/widgets/bigconta_card.dart';
import 'package:netflix1/view/comingsoon_screen/widgets/smallconta_card.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primaryblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_notifications_rounded,
                    color: const Color.fromARGB(255, 245, 18, 2),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontSize: 16.91, color: colorconstant.primarywhite),
                  )
                ],
              ),
            ),
            Smallcontainer(),
            SizedBox(
              height: 30,
            ),
            Bigcontainer(),
          ],
        ),
      ),
    );
  }
}
