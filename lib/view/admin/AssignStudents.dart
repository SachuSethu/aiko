import 'package:flutter/material.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';

class Assignstudents extends StatefulWidget {
  const Assignstudents({super.key});

  @override
  State<Assignstudents> createState() => _AssignstudentsState();
}

class _AssignstudentsState extends State<Assignstudents> {

  List<bool> isChecked = List.generate(5, (index) => false);

  List<Map<String, dynamic>> teachers = [
    {
      "name": "Alex Rivers",
      "subject": "Computer Science • Year 3",
      "image":
          "https://i.pinimg.com/736x/e8/59/32/e8593211a1528cd49087d29cbe971647.jpg",
    },
    {
      "name": "Jordan Smith",
      "subject": "Mathematics • Year 2",
      "image":
          "https://i.pinimg.com/736x/48/28/fd/4828fd63ecefb6403f78d226ffab1f3f.jpg",
    },
    {
      "name": "Maya Patel",
      "subject": "Software Engineering • Year 4",
      "image":
          "https://randomuser.me/api/portraits/women/68.jpg",
    },
    {
      "name": "Liam O'Connor",
      "subject": "Cyber Security • Year 1",
      "image":
          "https://randomuser.me/api/portraits/men/52.jpg",
    },
    {
      "name": "Sophie Laurent",
      "subject": "Data Science • Year 2",
      "image":
          "https://randomuser.me/api/portraits/women/32.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        backgroundColor: const Color(0xffF3F4F5),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),

            child: Column(
              children: [

                /// HEADER
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 10,
                    right: 10,
                  ),
                  child: HeaderSection(),
                ),

                const SizedBox(height: 40),

                /// TITLE
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),

                    child: Text(
                      "Assign Students",

                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: "Lexend",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                /// SUBTITLE
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 20,
                    ),

                    child: Text(
                      "Manage course enrollments and mentor \nassignments.",

                      maxLines: 2,

                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w300,
                        color: Color(0xff454652),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// SELECT TEACHER
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),

                    child: Text(
                      "Select Teacher",

                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        color: Color(0xff24389C),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                /// DROPDOWN
                Container(
                  height: 56,
                  width: 342,

                  decoration: BoxDecoration(
                    color: const Color(0xffE9EBEE),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),

                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        Text(
                          "Choose an instructor...",

                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w300,
                            color: Color(0xff191C1D),
                          ),
                        ),

                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff757684),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// WHITE CONTAINER
                Container(
                  height: 540,
                  width: 342,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [

                      /// TOP BAR
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 18,
                        ),

                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,

                          children: [

                            const Text(
                              "24 Students Available",

                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                color: Color(0xff191C1D),
                              ),
                            ),

                            Row(
                              children: const [

                                Icon(
                                  Icons.search,
                                  color: Color(0xff757684),
                                  size: 20,
                                ),

                                SizedBox(width: 18),

                                Icon(
                                  Icons.filter_list,
                                  color: Color(0xff757684),
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      
                    

                      const SizedBox(height: 10),

                      /// LISTVIEW
                      Expanded(
                        child: ListView.builder(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),

                          itemCount: teachers.length,

                          itemBuilder: (context, index) {

                            final teacher =
                                teachers[index];

                            return Padding(
                              padding:
                                  const EdgeInsets.only(
                                bottom: 14,
                              ),

                              child: Container(
                                padding:
                                    const EdgeInsets.all(12),

                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xffF8F8F8),

                                  borderRadius:
                                      BorderRadius.circular(
                                          16),
                                ),

                                child: Row(
                                  children: [

                                    /// IMAGE
                                    Container(
                                      height: 55,
                                      width: 55,

                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius
                                                .circular(
                                                    16),

                                        child:
                                            Image.network(
                                          teacher["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    const SizedBox(width: 14),

                                    /// TEXT
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,

                                        children: [

                                          Text(
                                            teacher["name"],

                                            style:
                                                const TextStyle(
                                              fontSize: 17,
                                              fontWeight:
                                                  FontWeight
                                                      .w700,
                                              fontFamily:
                                                  "Lexend",
                                              color: Color(
                                                  0xff191C1D),
                                            ),
                                          ),

                                          const SizedBox(
                                              height: 5),

                                          Text(
                                            teacher["subject"],

                                            style:
                                                const TextStyle(
                                              fontSize: 14,
                                              color: Color(
                                                  0xff757684),
                                              fontFamily:
                                                  "Inter",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    /// CHECKBOX
                                    Checkbox(
                                      value:
                                          isChecked[index],

                                      activeColor:
                                          const Color(
                                              0xff24389C),

                                      side:
                                          const BorderSide(
                                        color: Color(
                                            0xffB0B0B0),
                                        width: 1.5,
                                      ),

                                      shape:
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius
                                                .circular(5),
                                      ),

                                      onChanged: (value) {

                                        setState(() {

                                          isChecked[index] =
                                              value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                                         Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),

                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,

                          children: [

                            RichText(
                              text: TextSpan(
                                children: [

                                  const TextSpan(
                                    text: "Selected: ",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff757684),
                                      fontFamily: "Inter",
                                    ),
                                  ),

                                  TextSpan(
                                    text:
                                        "${isChecked.where((e) => e).length} students",

                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff24389C),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: () {

                                setState(() {

                                  isChecked =
                                      List.generate(
                                    teachers.length,
                                    (index) => false,
                                  );
                                });
                              },

                              child: const Text(
                                "Clear All",

                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff24389C),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Inter",
                                ),
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
      ),
    );
  }
}