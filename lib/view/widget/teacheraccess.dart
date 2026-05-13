import 'package:flutter/material.dart';
import 'package:project_flutter/view/student/complaintscreen.dart';

class Teacheraccess extends StatelessWidget {
  const Teacheraccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromARGB(255, 243, 243, 243),
        body: Column(
          children: [
      
                AppBarofComp(),
        SizedBox(height: 30,),
        Container(
          height: 678,
          width: 360,
          decoration: BoxDecoration(
            color: Color(0XFFFFFFFF),
            borderRadius: BorderRadius.circular(20),

          ),
          
          child: Padding(
            padding: const EdgeInsets.only(top:30),
            child: Column(
              
              children: [
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0XFFF3E8FF),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Align(
                    child: Text("TEACHER ACCESS",
                    style: TextStyle(
                      color: Color(0XFF6D4EA2),
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Invite your students",
                 style: TextStyle(
                      color: Color(0XFF191C1D),
                      fontFamily: "Lexend",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                ),
                SizedBox(height: 10,),
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Text("Share this unique access code with your students to grant them entry to the Computer Science Dept. portal.",maxLines: 3,
                     style: TextStyle(
                          color: Color(0XFF454652),
                          fontFamily: "Inter",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 184,
                  width: 276,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 237, 237,),
                    
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3), // 30% opacity
                      width: 1,
                    )),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text("GENERATED CODE",
                           style: TextStyle(
                                color: Color(0XFF818CF8),
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("CAMP-XYZ",
                         style: TextStyle(
                              color: Color(0XFF24389C),
                              fontFamily: "Lexend",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 56,
                          width: 224,
                          decoration: BoxDecoration(
                            color: Color(0xff3F51B5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                         child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,

                        children: [

                          Icon(
                            Icons.copy_all_rounded,
                            color: Color(0xffFFFFFF),
                          ),

                          SizedBox(width: 5),

                          Text(
                            "Copy Code",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                        )
                      ],
                    ),
                    
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 267.98,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                      color: Colors.black.withOpacity(0.3), // 30% opacity
                      width: 1,
                    ),),
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,

                        children: [

                          Icon(
                            Icons.refresh,
                            color: Color(0xff24389C),
                          ),

                          SizedBox(width: 5),

                          Text(
                            "Regenerate",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff24389C),
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                  ),
                SizedBox(height: 25,),
                  Container(
                    height: 50,
                    width: 267.98,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                      color: Colors.black.withOpacity(0.3), // 30% opacity
                      width: 1,
                    ),),
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,

                        children: [

                          Icon(
                            Icons.share_outlined,
                            color: Color(0xff24389C),
                          ),

                          SizedBox(width: 5),

                          Text(
                            "Share Link",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff24389C),
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                  ),
                  SizedBox(height: 40,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Icon(
                            Icons.info_outline,
                            color: Color(0xff94A3B8),
                          ),
                          SizedBox(width: 20,),
                       Text("This code expires in 24 hours for \n                     security.",
                       style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff94A3B8),
                                  fontFamily: "Inter",
                                ),),
                     ],
                   )
                
            ],
            ),
          ),
        )
          ]
          
        ),
      ),
    );
  }
}