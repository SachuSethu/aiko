import 'package:flutter/material.dart';
import 'package:project_flutter/view/color/colorpallet.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundImage:
              NetworkImage("https://i.pinimg.com/736x/55/5e/5e/555e5e6a40392d3e277b898b3ced7e70.jpg"),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            "CampuSphere",
        style: AppTextStyles.heading02,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            size: 28,
            color: Color(0xFF4F46E5),
          ),
        )
      ],
    );
  }
}