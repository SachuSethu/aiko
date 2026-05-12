import 'package:flutter/material.dart';

class StatusAvatarList extends StatelessWidget {
  const StatusAvatarList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _StatusItem(
            name: "Your Status",
            isAdd: true,
          ),
          _StatusItem(
            name: "Dr. Rivers",
            image: "https://i.pravatar.cc/150?img=5",
          ),
          _StatusItem(
            name: "Sarah M.",
            image: "https://i.pravatar.cc/150?img=32",
          ),
          _StatusItem(
            name: "James S.",
            image: "https://i.pravatar.cc/150?img=9",
          ),
        ],
      ),
    );
  }
}

class _StatusItem extends StatelessWidget {
  final String name;
  final String? image;
  final bool isAdd;

  const _StatusItem({
    required this.name,
    this.image,
    this.isAdd = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    isAdd ? const Color(0xFFE0E7FF) : Colors.grey.shade200,
                backgroundImage:
                    image != null ? NetworkImage(image!) : null,
                child: isAdd
                    ? const Icon(Icons.add,
                        size: 28, color: Color(0xFF4F46E5))
                    : null,
              ),
              if (!isAdd)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}