import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
 return Container(
  height: 50,
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 255, 255, 255),
    borderRadius: BorderRadius.circular(30), // Rounded edges

    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 6,
        spreadRadius: 1,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: TextField(
    style: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    decoration: InputDecoration(
      
      hintText: "Search subjects,notes, or professors..",
      hintStyle: TextStyle(
        color: Colors.grey,
      ),

      prefixIcon: Icon(
        Icons.search,
        color: Colors.grey,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
        ),
      ),

      filled: true,
      fillColor: const Color.fromARGB(255, 255, 255, 255),
   
      contentPadding: EdgeInsets.symmetric(
        vertical: 14,
      ),
    ),
  ),
);}}