import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:project_flutter/view/student/complaintscreen.dart';
import 'package:project_flutter/view/student/studenthome.dart';

class Studentbottomnav extends StatefulWidget {
  const Studentbottomnav({super.key});

  @override
  State<Studentbottomnav> createState() =>
      _StudentbottomnavState();
}

class _StudentbottomnavState
    extends State<Studentbottomnav> {

  int _currentIndex = 0;

  final List<Widget> _pages = [

    StudentHome(),

    // const Center(
    //   child: Text("Users Screen"),
    // ),
    Complaintscreen(),

    const Center(
      child: Text("Messages Screen"),
    ),

    const Center(
      child: Text("Settings Screen"),
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: _pages[_currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 65,

        backgroundColor: Colors.transparent,

        color: Colors.white,

        buttonBackgroundColor: Colors.blue,

        animationCurve: Curves.easeInOut,
        animationDuration:
            const Duration(milliseconds: 300),

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [

          CurvedNavigationBarItem(
            child: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),

          CurvedNavigationBarItem(
            child: const Icon(
              Icons.people,
              color: Colors.white,
            ),
            label: 'Users',
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),

          CurvedNavigationBarItem(
            child: const Icon(
              Icons.message,
              color: Colors.white,
            ),
            label: 'Messages',
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),

          CurvedNavigationBarItem(
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Settings',
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}