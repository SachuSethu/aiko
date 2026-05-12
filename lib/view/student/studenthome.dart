import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter/view/color/colorpallet.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';

class StudentHome extends StatelessWidget {
   StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
          SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HeaderSection(),
                  ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Hello,", style: AppTextStyles.heading0,),
                      Text("Raina", style: AppTextStyles.heading0,),
                      Text("👋", style: AppTextStyles.heading0,),
                    ],
                  ),
                  Text( "Welcome back to your academic hub. Here's what's happening today", style: TextStyle(fontSize: 16, color: AppColors.bodyText),)
                ],
              ),
            ),
            
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 160,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        // Icon(, size: 40, color: Colors.blue,),
                        Align(
                          alignment: AlignmentGeometry.topLeft,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(91, 152, 148, 191),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(Icons.book_outlined,
                            color: Colors.blue,)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Recent Notes", style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          
                        ),
                    
                        ),
                        Text("Distributed \nSystem L4", style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        
                      )
                    
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 25,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(25, 0, 0, 0),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(child: Text("View", style: TextStyle(color: Colors.blue),)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 160,
                  width: 163,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(212, 18, 85, 209),
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
                        Align(
                          alignment: AlignmentGeometry.topLeft,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(91, 152, 148, 191),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(Icons.notifications_active_outlined,
                            color: Colors.white,)
                          ),
                        ),
                        SizedBox(height: 5,),
                    Text("Upcoming Reminders",
                    style:  GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                                        ),
                    SizedBox(height: 4,),
                    Text("Submit Project\nProposal ",
                    style:  GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        
                      ),
                                        ),
                    SizedBox(height: 4,),
                    Text("Due in 2h",
                    style:  GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                                        ),
                      ],
                    ),
                  ),
                //   child: Container(
                //    height: 25,
                //    width: 25,
                //    decoration: BoxDecoration(
                //     color: Colors.grey
                //    ),
                //   ),
                // )
             ) ],
            ),SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Announcements",
                  style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:Colors.black ,
                              
                              ),
                              textAlign: TextAlign.start,
                            
                  ),
                  Text("view all",
                  style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:Colors.deepPurple ,
                              
                              ),
                              textAlign: TextAlign.start,
                            
                  ),
                ],
              ),
            ) ,
            Container(
              height: 50,
              width: 340,
            )
        ],
      ),
    );
  }
}