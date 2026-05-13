import 'package:flutter/material.dart';
import 'package:project_flutter/models/docmodel.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';

class Teacheruploadnotes extends StatelessWidget {
   Teacheruploadnotes({super.key});
final List<Document> items = [
  Document(
    title: "Data Structures & Algorithms",
    subtitle: "PDF • 2.4 MB",
    tag: "EXAM PREP",
    icon: Icons.description,
    iconColor: Colors.blue,
    iconBgColor: Colors.blue.shade50,
    tagBgColor: Colors.purple.shade50,
    tagTextColor: Colors.purple,
  ),
  Document(
    title: "Operating Systems - Module 4",
    subtitle: "DOCX • 1.1 MB",
    tag: "LECTURE",
    icon: Icons.image,
    iconColor: Colors.orange,
    iconBgColor: Colors.orange.shade50,
    tagBgColor: Colors.blue.shade50,
    tagTextColor: Colors.blue,
  ),
  Document(
    title: "Advanced Statistics Summary",
    subtitle: "PDF • 5.8 MB",
    tag: "CHEAT SHEET",
    icon: Icons.bar_chart,
    iconColor: Colors.red,
    iconBgColor: Colors.red.shade50,
    tagBgColor: Colors.purple.shade50,
    tagTextColor: Colors.purple,
  ),
  Document(
    title: "Ethical Hacking Workshop Notes",
    subtitle: "PDF • 3.2 MB",
    tag: "LAB WORK",
    icon: Icons.code,
    iconColor: Colors.teal,
    iconBgColor: Colors.teal.shade50,
    tagBgColor: Colors.green.shade50,
    tagTextColor: Colors.green,
  ),
];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromARGB(255, 245, 247, 250),
       body: SingleChildScrollView(
          child: Column(
            children: [
               const Padding(
                padding: EdgeInsets.only(left: 20,top:15,right: 20),
                child: HeaderSection(),
              ),
              SizedBox(height: 40,),
      Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Upload Course Material",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 5),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  child: Text(
                    "Share your lecture notes, assignments, or study guides with your students.",maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w300,
                      color: Color(0xff454652),
                    ),
                  ),
                ),
              ),
          SizedBox(height: 30,),
        Container(
          height: 710,
          width: 360,
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:20,top:20),
                  child: Text("NOTE TITLE",
                  style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: Color(0xff24389C),)
                            ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                 height: 56 ,
                 width: 308,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 217),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10) ),
                   border: Border.all(
                      color: Colors.black.withOpacity(0.3), // 30% opacity
                      width: 1,
                 ),
              ),
              child: Align(
                alignment: AlignmentGeometry.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:15,top:10),
                  child: Text("e.g., Introduction to Neural Networks - Week 4",maxLines: 2,
                  style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w300,
                              color: Color(0xff757684),),),
                ),
              )
              ),
              SizedBox(height: 10,),
               Align(
                alignment: AlignmentGeometry.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:20,top:20),
                  child: Text("COURSE CODE",
                  style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: Color(0xff24389C),)
                            ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                 height: 56 ,
                 width: 308,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 217),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10) ),
                   border: Border.all(
                      color: Colors.black.withOpacity(0.3), // 30% opacity
                      width: 1,
                 ),
              ),
              child: Align(
                alignment: AlignmentGeometry.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:15,top:15),
                  child: Text("CS-401 Computer Science",
                  style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              color: Color(0xff191C1D),),),
                ),
              )
           ),
           SizedBox(height: 50,),
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Row(
              children: [
                Container(
                    height: 28,
                    width: 106.5,
                    decoration: BoxDecoration(
                      color: Color(0XFFF3E8FF),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Align(
                      child: Text("New Material",
                      style: TextStyle(
                        color: Color(0XFF533487),
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
             Container(
                    height: 28,
                    width: 106.5,
                    decoration: BoxDecoration(
                      color: Color(0XFFABF4AC),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Align(
                      child: Text("Summer 2024",
                      style: TextStyle(
                        color: Color(0XFF07521D),
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                
              ],
             ),
             
           ),
           SizedBox(height: 20,),
           Align(
            alignment: AlignmentGeometry.topLeft,
             child: Padding(
               padding: const EdgeInsets.only(left:25 ),
               child: Text("FILE ATTACHMENT",
               style: TextStyle(
                            color: Color(0XFF24389C),
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
               ),
             ),
           ),
           SizedBox(height: 10,),
           Container(
  height: 250,
  width: 320,
  decoration: BoxDecoration(
    color: const Color(0xFFF9F9F9),
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: const Color(0xFFD6D6E5),
      width: 1.5,
      style: BorderStyle.solid,
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      

      const SizedBox(height: 18),

      Container(
        height: 52,
        width: 52,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 213, 211, 255),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.cloud_upload_outlined,
          color: Color.fromARGB(255, 33, 33, 168),
          size: 28,
        ),
      ),

      const SizedBox(height: 18),

      const Text(
        "Drag & drop files here",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
          fontFamily: "Inter",
        ),
      ),

      const SizedBox(height: 10),

      Text(
        "Supported formats: PDF, PPTX,\nDOCX. Max file size: 50MB.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade600,
          fontFamily: "Inter",
        ),
      ),
    ],
  ),
),
SizedBox(height: 30,),
Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                      color:Color(0xff3F51B5),
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
                            color: Color(0xffFFFFFF),
                          ),

                          SizedBox(width: 5),

                          Text(
                            "Upload & Share",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF),
                              fontFamily: "Lexend",
                            ),
                          ),
                        ],
                      ),
                  ),
                  
],
          ),
          ), 
          SizedBox(height: 30,),
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:25),
              child: Text("Recently Uploaded",
               style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff191C1D),
                                  fontFamily: "Lexend",
                                ),
              ),
            ),
          ) ,
          SizedBox(height: 20,),
          ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: items.length,
      separatorBuilder: (context, index) =>
          const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final doc = items[index];
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: doc.iconBgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:
                    Icon(doc.icon, color: doc.iconColor),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          doc.subtitle,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding:
                              const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4),
                          decoration: BoxDecoration(
                            color: doc.tagBgColor,
                            borderRadius:
                                BorderRadius.circular(20),
                          ),
                          child: Text(
                            doc.tag,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight:
                                  FontWeight.w600,
                              color:
                                  doc.tagTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.blue,
                child: Icon(Icons.download,
                    color: Colors.white),
              ),
            ],
          ),
        );
      },
            )]))));
      
          
      

  }
}