import 'package:flutter/material.dart';
import 'package:project_flutter/view/student/studenthome.dart';
import 'package:project_flutter/view/student/widgets/anncont.dart';

class Announcement extends StatelessWidget {

  final List<AnnouncementModel> announcements;

  const Announcement({
    super.key,
    required this.announcements,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Announcements"),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),

        itemCount: announcements.length,

        itemBuilder: (context, index) {

          final item = announcements[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),

            child: AnnCont(
              item: item,
            ),
          );
        },
      ),
    );
  }
}