import 'package:flutter/material.dart';

class subjectgrid extends StatelessWidget {
  const subjectgrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 22,
        mainAxisSpacing: 30,
        childAspectRatio: 1.3,
      ),
      itemBuilder: (context, index) {
        final titles = [
          "Computer\nScience",
          "Mathematics",
          "Physics",
          "Digital Arts"
        ];
    
        final resources = [
          "42 Resources",
          "28 Resources",
          "15 Resources",
          "12 Resources"
        ];
    
        final colors = [
          Color(0xFFE8ECFF),
          Color(0xFFF3E8FF),
          Color(0xFFE6FFF3),
          Color(0xFFFFF1E6),
        ];
    
        final iconColors = [
          Colors.indigo,
          Colors.deepPurple,
          Colors.teal,
          Colors.deepOrange,
        ];
    
        final icons = [
          Icons.computer,
          Icons.calculate,
          Icons.science,
          Icons.palette,
        ];
    
        return Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: colors[index],
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(2, 3),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icons[index],
                color: iconColors[index],
                size: 28,
              ),
              Text(
                titles[index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                resources[index],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}