

import 'package:flutter/material.dart';
import 'package:project_flutter/view/student/widgets/chat_tile_widget.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';
import 'package:project_flutter/view/student/widgets/search_bar_chat.dart';
import 'package:project_flutter/view/student/widgets/status_avatar_list.dart';

import '../color/colorpallet.dart';


class ChatHomeScreen extends StatelessWidget {
  const ChatHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 10),
               HeaderSection(),
             SizedBox(height: 24),
               SearchBarWidget(),
               SizedBox(height: 24),
               StatusAvatarList(),
               SizedBox(height: 32),

              /// Recent Chats Title
              Text(
                "Recent Chats",
                style: AppTextStyles.heading01,
              ),

              const SizedBox(height: 20),

              const ChatTileWidget(
                isNew: true,
                title: "Algorithms Study Group",
                subtitle: "Alex: Hey guys, did anyone...",
                time: "10:42 AM",
                unreadCount: 3,
                image: "https://i.pravatar.cc/150?img=12",
              ),

              const SizedBox(height: 16),

              const ChatTileWidget(
                title: "Dr. Alex Rivers",
                subtitle: "Your project proposal has been...",
                time: "Yesterday",
                image: "https://i.pravatar.cc/150?img=5",
              ),

              const SizedBox(height: 16),

              const ChatTileWidget(
                title: "Sarah Miller",
                subtitle: "Are we still meeting at the library...",
                time: "Yesterday",
                image: "https://i.pravatar.cc/150?img=32",
              ),

              const SizedBox(height: 16),

              const ChatTileWidget(
                title: "Campus News",
                subtitle: "Reminder: The annual Career Fair...",
                time: "Monday",
                isIcon: true,
              ),

              const SizedBox(height: 16),

              const ChatTileWidget(
                title: "James Smith",
                subtitle: "Sent a file: assignment_final.pdf",
                time: "Oct 12",
                image: "https://i.pravatar.cc/150?img=9",
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}