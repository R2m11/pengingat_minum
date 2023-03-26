import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pengingat_minum/view/home.dart';
import 'package:pengingat_minum/view/jadwal.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;

  final List<Widget> bodypage = [
    const HalamanAwal(),
    const Jadwal(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Center(
              child: bodypage[currentIndex],
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: [
            Icon(
              Icons.home,
              size: 30,
              semanticLabel: "Home",
              color: currentIndex == 0 ? Colors.blue : Colors.black,
            ),
            Icon(
              Icons.access_alarm,
              size: 30,
              semanticLabel: "Atur jadwal",
              color: currentIndex == 1 ? Colors.blue : Colors.black,
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
