import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter/view/color/colorpallet.dart';
import 'package:project_flutter/view/student/announcement.dart';
import 'package:project_flutter/view/student/widgets/anncont.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';

class AnnouncementModel {
  final Color color;
  final Color containcolor;
  final Color tagcolor;
  final Color tagtextcolor;
  final IconData icon;
  final String title;
  final String subtitle;
  final String tag;

  AnnouncementModel({
    required this.containcolor,
    required this.tagcolor,
    required this.tagtextcolor,
    required this.color,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.tag,
  });
}

class StudentHome extends StatelessWidget {
  StudentHome({super.key});

  final List<AnnouncementModel> announcements = [
    AnnouncementModel(
      containcolor: Colors.purple,
      color:  Colors.white,
      icon: Icons.campaign_outlined,
      title: "Library 24/7 Access",
      subtitle:
          "The main library will now remain open 24/7 for finals week.",

      tag: "FACILITY",
      tagcolor: const Color.fromARGB(255, 194, 153, 201),
      tagtextcolor: Colors.purple,

    ),

    AnnouncementModel(
      containcolor: Colors.blue,
      color:  Colors.white,
      icon: Icons.calendar_month_outlined,
      title: "Career Fair Registration",
      subtitle:
          "Registration for the Annual Tech Career Fair is now open for third- year students.",
          
      tag: "CAREERS",
      tagcolor: const Color.fromARGB(255, 159, 161, 159),
      tagtextcolor: Colors.black,
    ),

   
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  Color(0xffF8FAFC),
      
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
      
              // const SizedBox(height: 50),
      
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: HeaderSection(),
              ),
      
              SizedBox(
                height: 150,
                width: double.infinity,
      
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
      
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
      
                    children: [
      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                        
                            Text(
                              "Hello, ",
                              style: AppTextStyles.heading0,
                            ),
                        
                            Text(
                              "Raina ",
                              style: AppTextStyles.heading0,
                            ),
                        
                            Text(
                              "👋",
                              style: AppTextStyles.heading0,
                            ),
                          ],
                        ),
                      ),
      
                      const SizedBox(height: 5),
      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Welcome back to your academic hub. Here's what's happening today",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.bodyText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
      
                children: [
      
                  // CARD 1
                  Container(
                    height: 180,
                    width: 163,
      
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
      
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(25, 0, 0, 0),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
      
                    child: Padding(
                      padding: const EdgeInsets.all(15),
      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
      
                        children: [
      
                          Container(
                            width: 40,
                            height: 40,
      
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                91,
                                152,
                                148,
                                191,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
      
                            child: const Icon(
                              Icons.book_outlined,
                              color: Colors.blue,
                            ),
                          ),
      
                          const SizedBox(height: 10),
      
                          Text(
                            "Recent Notes",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
      
                          const SizedBox(height: 5),
      
                          Text(
                            "Distributed\nSystem L4",
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
      
                          const SizedBox(height: 10),
      
                          Container(
                            height: 25,
                            width: 150,
      
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                255,
                                190,
                                190,
                                190,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
      
                            child: const Center(
                              child: Text(
                                "View",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
      
                  const SizedBox(width: 15),
      
                  // CARD 2
                  Container(
                    height: 170,
                    width: 163,
      
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        212,
                        18,
                        85,
                        209,
                      ),
      
                      borderRadius: BorderRadius.circular(16),
      
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(81, 0, 0, 0),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
      
                    child: Padding(
                      padding: const EdgeInsets.all(15),
      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
      
                        children: [
      
                          Container(
                            width: 40,
                            height: 40,
      
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                91,
                                152,
                                148,
                                191,
                              ),
      
                              borderRadius: BorderRadius.circular(16),
                            ),
      
                            child: const Icon(
                              Icons.notifications_active_outlined,
                              color: Colors.white,
                            ),
                          ),
      
                          const SizedBox(height: 8),
      
                          Text(
                            "Upcoming Reminders",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
      
                          const SizedBox(height: 5),
      
                          Text(
                            "Submit Project\nProposal",
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
      
                          const SizedBox(height: 5),
      
                          Text(
                            "Due in 2h",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      
              const SizedBox(height: 25),
      
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
      
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                
                  children: [
                
                    Text(
                      "Announcements",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Announcement(announcements: announcements,),));
                      },
                      child: Text(
                        "View all",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                   ],
                ),
              ),
      SizedBox(height: 10,),
              // LISTVIEW
             ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero, // 👈 add this
        itemCount: announcements.length,
        itemBuilder: (context, index) {
      final item = announcements[index];
      
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: AnnCont(item: item),
      );
        },
      ),
     
      // ),
      
      
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Recent updates",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
          ),
        ),
      ),
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
      width: double.infinity,
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(30, 0, 0, 0),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
          // IMAGE
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.network(
              "https://i.pinimg.com/control1/1200x/57/75/9e/57759e336a8fb65b8d05f17dbfb6533d.jpg",
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    "New Course Material Uploaded",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
      
                const SizedBox(height: 6),
      
                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    "Professor Williams has uploaded the lecture \n notes for 'Machine Learning Foundations' Module 4.",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ),
      
                const SizedBox(height: 10),
      
               Container(
        height: 40,
        width: 170,
      
        decoration: BoxDecoration(
      color: const Color.fromARGB(255, 0, 70, 163),
      borderRadius: BorderRadius.circular(20),
        ),
      
        child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        Icon(
          Icons.download_outlined,
          color: Colors.white,
          size: 18,
        ),
      
        SizedBox(width: 8),
      
        Text(
          "Download Notes",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
        ),
      ),
              ],
            ),
          ),
        ],
      ),
        ),
      ),
      SizedBox(height: 10,)
      
            ],
          ),
          
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add,),
        ),
      ),
    );
  }
}
