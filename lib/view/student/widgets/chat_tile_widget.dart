import 'package:flutter/material.dart';
import 'unread_badge.dart';

class ChatTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String? image;
  final bool isNew;
  final bool isIcon;
  final int unreadCount;

  const ChatTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    this.image,
    this.isNew = false,
    this.isIcon = false,
    this.unreadCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          isIcon
              ? Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9C2FF),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Icon(Icons.school,
                      color: Color(0xFF5B21B6)),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                    image ??
                        "https://i.pravatar.cc/150?img=1",
                  ),
                ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color(0xFF4F46E5),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          if (unreadCount > 0) ...[
            const SizedBox(width: 12),
            UnreadBadge(count: unreadCount),
          ]
        ],
      ),
    );
  }
}