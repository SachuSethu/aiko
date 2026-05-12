import 'package:flutter/material.dart';

class Document {
  final String title;
  final String subtitle;
  final String tag;
  final IconData icon;
  final Color iconColor;
  final Color iconBgColor;
  final Color tagBgColor;
  final Color tagTextColor;

  Document({
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    required this.tagBgColor,
    required this.tagTextColor,
  });
}