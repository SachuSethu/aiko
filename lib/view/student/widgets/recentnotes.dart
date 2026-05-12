import 'package:flutter/material.dart';
import 'package:project_flutter/models/docmodel.dart';

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

class Recentnoteslist extends StatelessWidget {
  const Recentnoteslist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
    );
  }
}