import 'package:flutter/material.dart';
import 'package:project_flutter/view/widget/search.dart';
import '../color/colorpallet.dart';
import 'widgets/recentnotes.dart';
import 'widgets/subjectgrid.dart';

// final List<Document> items = [
//   Document(
//     title: "Data Structures & Algorithms",
//     subtitle: "PDF • 2.4 MB",
//     tag: "EXAM PREP",
//     icon: Icons.description,
//     iconColor: Colors.blue,
//     iconBgColor: Colors.blue.shade50,
//     tagBgColor: Colors.purple.shade50,
//     tagTextColor: Colors.purple,
//   ),
//   Document(
//     title: "Operating Systems - Module 4",
//     subtitle: "DOCX • 1.1 MB",
//     tag: "LECTURE",
//     icon: Icons.image,
//     iconColor: Colors.orange,
//     iconBgColor: Colors.orange.shade50,
//     tagBgColor: Colors.blue.shade50,
//     tagTextColor: Colors.blue,
//   ),
//   Document(
//     title: "Advanced Statistics Summary",
//     subtitle: "PDF • 5.8 MB",
//     tag: "CHEAT SHEET",
//     icon: Icons.bar_chart,
//     iconColor: Colors.red,
//     iconBgColor: Colors.red.shade50,
//     tagBgColor: Colors.purple.shade50,
//     tagTextColor: Colors.purple,
//   ),
//   Document(
//     title: "Ethical Hacking Workshop Notes",
//     subtitle: "PDF • 3.2 MB",
//     tag: "LAB WORK",
//     icon: Icons.code,
//     iconColor: Colors.teal,
//     iconBgColor: Colors.teal.shade50,
//     tagBgColor: Colors.green.shade50,
//     tagTextColor: Colors.green,
//   ),
// ];

class NoteLibScreen extends StatelessWidget {
  const NoteLibScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: false,
            pinned: false,
            centerTitle: false,
            leading: const Padding(
              padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/736x/55/5e/5e/555e5e6a40392d3e277b898b3ced7e70.jpg",
                ),
              ),
            ),
            title: Text(
              "CampuSphere",
              style: AppTextStyles.heading2,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Searchbar(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Explore Subjects",
                          style: AppTextStyles.heading01,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("View ALL"),
                        ),
                      )
                    ],
                  ),
                  subjectgrid(),
                  const SizedBox(height: 30),
                  Text(
                    "Recent Notes",
                    style: AppTextStyles.heading01,
                  ),
                  const SizedBox(height: 10),
                  Recentnoteslist(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

