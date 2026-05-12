import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/view/color/colorpallet.dart';
import 'package:project_flutter/view/student/notelib.dart';
import 'package:project_flutter/view/student/student_signupscreen.dart';
import 'package:project_flutter/view/student/studentchatscreen.dart';
import 'package:project_flutter/view/student/studenthome.dart';
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      home: StudentHome(),
    );
  }
}