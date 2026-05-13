import 'package:flutter/material.dart';

class Complaintscreen extends StatefulWidget {
  const Complaintscreen({super.key});

  @override
  State<Complaintscreen> createState() => _ComplaintscreenState();
}

class _ComplaintscreenState extends State<Complaintscreen> {

  bool isAnonymous = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(
            children: [

              AppBarofComp(),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Submit a Complaint",
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
                    "Your feedback helps us maintain a better campus environment for everyone.",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w300,
                      color: Color(0xff454652),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),

              Container(
                width: 380,
                padding: EdgeInsets.symmetric(vertical: 20),

                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [

                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 20,
                        ),

                        child: Text(
                          "Issue Description",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                            color: Color(0xff24389C),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    Container(
                      height: 250,
                      width: 340,

                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F5),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Align(
                        alignment: Alignment.topLeft,

                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 25,
                            top: 20,
                            right: 25,
                          ),

                          child: TextField(
                            maxLines: null,

                            decoration: InputDecoration(
                              hintText:
                                  "Please provide specific details about the issue you encountered...",

                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w300,
                                color: Color(0xff454652),
                              ),

                              filled: true,
                              fillColor: Colors.transparent,

                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,

                              isCollapsed: true,
                              contentPadding: EdgeInsets.zero,
                            ),

                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Align(
                      alignment: Alignment.topLeft,

                      child: Padding(
                        padding: EdgeInsets.only(left: 40),

                        child: SizedBox(
                          width: 250,

                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,

                            children: [

                              Text(
                                "Academic",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff6D4EA2),
                                ),
                              ),

                              Text(
                                "Facility",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff6D4EA2),
                                ),
                              ),

                              Text(
                                "Administration",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff6D4EA2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    Container(
                      height: 72,
                      width: 340,
                      padding: EdgeInsets.symmetric(horizontal: 18),

                      decoration: BoxDecoration(
                        color: Color(0xFFF3F4F5),
                        borderRadius: BorderRadius.circular(18),
                      ),

                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,

                        children: [

                          Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,

                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              Text(
                                isAnonymous
                                    ? "Submit anonymously"
                                    : "Submit normally",

                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: "Inter",
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                isAnonymous
                                    ? "Hide your identity from administrators"
                                    : "Your identity will be visible",

                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff454652),
                                  fontFamily: "Inter",
                                ),
                              ),
                            ],
                          ),

                          Switch(
                            value: isAnonymous,

                            onChanged: (value) {
                              setState(() {
                                isAnonymous = value;
                              });
                            },

                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFF0A84FF),

                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor:
                                Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 72,
                      width: 330,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3F51B5),
                      ),

                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,

                        children: [

                          Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                          ),

                          SizedBox(width: 10),

                          Text(
                            "Submit Complaint",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarofComp extends StatelessWidget {
  const AppBarofComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [

        Row(
          children: [

            IconButton(
              onPressed: () {},

              icon: Icon(
                Icons.arrow_back,
                color: Color(0xff64748B),
              ),
            ),

            SizedBox(width: 20),

            Text(
              "CampuSphere",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 25,
                color: Color(0xff4F46E5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.all(8),

          child: Row(
            children: [

              IconButton(
                onPressed: () {},

                icon: Icon(
                  Icons.notifications_outlined,
                ),

                color: Color(0xff4F46E5),
              ),

              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/736x/46/5a/f8/465af86bba6ee6899f4b6f3cf0a1978d.jpg",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}