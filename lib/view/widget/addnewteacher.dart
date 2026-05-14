import 'package:flutter/material.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';

class Addnewteacher extends StatelessWidget {
  const Addnewteacher({super.key});

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

                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 10,
                    right: 10,
                  ),
                  child: HeaderSection(),
                ),

                const SizedBox(height: 100),

                Container(
                  width: MediaQuery.of(context).size.width * .92,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [

                      Text(
                        "Add Teacher",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff24389C),
                          fontFamily: "Lexend",
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        "Register a new academic instructor to\n"
                        "the institutional portal.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff454652),
                          fontFamily: "Inter",
                        ),
                      ),

                      const SizedBox(height: 35),

                      // Full Name
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          filled: true,
                          fillColor: const Color(0xffF3F4F5),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Email
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Institutional Email",
                          filled: true,
                          fillColor: const Color(0xffF3F4F5),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Temporary Password",
                          filled: true,
                          fillColor: const Color(0xffF3F4F5),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 35),

                      // Button
                      Container(
                        height: 56,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: const Color(0xff3F51B5),
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            const Icon(
                              Icons.person_add,
                              color: Color(0xffFFFFFF),
                            ),

                            const SizedBox(width: 5),

                            Text(
                              "Add Teacher",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffFFFFFF),
                                fontFamily: "Inter",
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 25),

                      Text(
                        "IMPORT FROM FACULTY LIST",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff24389C),
                          fontFamily: "Inter",
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