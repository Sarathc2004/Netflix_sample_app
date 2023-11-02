import 'package:flutter/material.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/view/comingsoon_screen/comingsoon.dart';
import 'package:netflix1/view/download_screen/download.dart';
import 'package:netflix1/view/home/home.dart';
import 'package:netflix1/view/homescreen/homescreen.dart';
import 'package:netflix1/view/morescreen/more.dart';
import 'package:netflix1/view/searchscreen/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int Selectedindex = 0;
  List<Widget> widgetlist = [
    Home(),
    searchscreen(),
    ComingSoon(),
    Downloadscreen(),
    morescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 30, 29, 29),
        selectedItemColor: colorconstant.primarywhite,
        unselectedItemColor: colorconstant.primarygrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: "Comming Soon",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: "Download",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_outlined),
              label: "More",
              backgroundColor: Colors.grey),
        ],
        currentIndex: Selectedindex,
        onTap: (Index) {
          setState(() {
            Selectedindex = Index;
          });
        },
      ),
      body: widgetlist[Selectedindex],
    );
  }
}
/*bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 30, 29, 29),
        selectedItemColor: colorconstant.primarywhite,
        unselectedItemColor: colorconstant.primarygrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: colorconstant.primarygrey,
              ),
              label: "Home",
              backgroundColor: const Color.fromARGB(255, 27, 27, 27)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: colorconstant.primarygrey,
              ),
              label: "Search",
              backgroundColor: const Color.fromARGB(255, 27, 27, 27)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
                color: colorconstant.primarygrey,
              ),
              label: "Commingsoon",
              backgroundColor: const Color.fromARGB(255, 27, 27, 27)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.download,
                color: colorconstant.primarygrey,
              ),
              label: "Download",
              backgroundColor: const Color.fromARGB(255, 27, 27, 27)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_vert_outlined,
                color: colorconstant.primarygrey,
              ),
              label: "More",
              backgroundColor: const Color.fromARGB(255, 27, 27, 27)),
        ],
        currentIndex: Selectedindex,
        onTap: (int index) {
          setState(() {
            Selectedindex = index;
          });
        },
        showUnselectedLabels: true,
      ),
  }
}*/