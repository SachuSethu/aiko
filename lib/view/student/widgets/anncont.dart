
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter/view/student/studenthome.dart';

class AnnCont extends StatelessWidget {
  const AnnCont({
    super.key,
    required this.item,
  });

  final AnnouncementModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: item.color,
        borderRadius:
            BorderRadius.circular(20),
            boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(81, 0, 0, 0),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
     ] ),
                
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,
                
        children: [
                
          Container(
            width: 50,
            height: 50,
                
            decoration: BoxDecoration(
              color: item.containcolor,
                
              borderRadius:
                  BorderRadius.circular(15),
            ),
                
            child: Icon(
              item.icon,
              color: Colors.black,
            ),
          ),
                
          const SizedBox(width: 15),
                
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
                
              children: [
                
                const SizedBox(height: 10),
                
                Text(
                  item.title,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight:
                        FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                
                const SizedBox(height: 5),
                
                Text(
                  item.subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                
                  decoration: BoxDecoration(
                    color: item.tagcolor,
                
                    borderRadius:
                        BorderRadius.circular(
                      30,
                    ),
                    
                  ),
                
                  child: Text(maxLines: 3,
                    item.tag,
                    style:
                        GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight:
                          FontWeight.bold,
                          color: item.tagtextcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}