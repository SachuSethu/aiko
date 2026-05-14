import 'package:flutter/material.dart';
import 'package:project_flutter/view/student/widgets/header_section.dart';

class Manageusers extends StatefulWidget {
  const Manageusers({super.key});
  

  @override
  State<Manageusers> createState() => _ManageusersState();
}

class _ManageusersState extends State<Manageusers> {
  int selectedIndex = 0;
// List<Map<String, dynamic>> users = [
//   {
//     "name": "Dr. Julianne \nDanvers",
//     "role": "FACULTY",
//     "id": "TC-4092",
//     "image":"https://i.pinimg.com/736x/e8/59/32/e8593211a1528cd49087d29cbe971647.jpg",
    
//   },
//   {
//     "name": "Prof. Aaron Marcus",
//     "role": "DEPT HEAD",
//     "id": "TC-1102",
//     "image":"https://i.pinimg.com/736x/48/28/fd/4828fd63ecefb6403f78d226ffab1f3f.jpg",
    
//   },
//   {
//     "name": "Sarah Whitmore",
//     "role": "FACULTY",
//     "id": "TC-8823",
//     "image":"https://i.pinimg.com/736x/9a/e3/fc/9ae3fcf890c8788ec5a1fbc3f437d85d.jpg",
    
//   },
//   {
//     "name": "Robert Langdon",
//     "role": "FACULTY",
//     "id": "TC-5034",
//     "image":"https://i.pinimg.com/736x/ff/85/85/ff85851ab789b4b5a2528731d903c525.jpg",
    
//   },
//   // {
//   //   "name": "Robert Langdon",
//   //   "role": "FACULTY",
//   //   "id": "TC-5034",
//   //   "image":"https://i.pinimg.com/736x/ff/85/85/ff85851ab789b4b5a2528731d903c525.jpg",
    
//   // },
// ];


List<Map<String, dynamic>> teachers = [
  {
    "name": "Dr. Julianne \nDanvers",
    "role": "FACULTY",
    "id": "TC-4092",
    "image":
        "https://i.pinimg.com/736x/e8/59/32/e8593211a1528cd49087d29cbe971647.jpg",
  },
  {
    "name": "Prof. Aaron Marcus",
    "role": "DEPT HEAD",
    "id": "TC-1102",
    "image":
        "https://i.pinimg.com/736x/48/28/fd/4828fd63ecefb6403f78d226ffab1f3f.jpg",
  },
  {
  "name": "Emily Carter",
  "role": "FACULTY",
  "id": "TC-6712",
  "image":
      "https://randomuser.me/api/portraits/women/68.jpg",
},
{
  "name": "Michael Reeves",
  "role": "HOD",
  "id": "TC-7845",
  "image":
      "https://randomuser.me/api/portraits/men/52.jpg",
},
{
  "name": "Sophia Bennett",
  "role": "LECTURER",
  "id": "TC-9021",
  "image":
      "https://randomuser.me/api/portraits/women/32.jpg",
},
];

List<Map<String, dynamic>> students = [
  {
    "name": "Sarah Whitmore",
    "role": "STUDENT",
    "id": "ST-8823",
    "image":
        "https://i.pinimg.com/736x/9a/e3/fc/9ae3fcf890c8788ec5a1fbc3f437d85d.jpg",
  },
  {
    "name": "Robert Langdon",
    "role": "STUDENT",
    "id": "ST-5034",
    "image":
        "https://i.pinimg.com/736x/ff/85/85/ff85851ab789b4b5a2528731d903c525.jpg",
  },
  {
  "name": "Daniel Cooper",
  "role": "STUDENT",
  "id": "ST-1145",
  "image":
      "https://randomuser.me/api/portraits/men/41.jpg",
},
{
  "name": "Olivia Watson",
  "role": "STUDENT",
  "id": "ST-2298",
  "image":
      "https://randomuser.me/api/portraits/women/50.jpg",
},
{
  "name": "Ethan Brooks",
  "role": "STUDENT",
  "id": "ST-3301",
  "image":
      "https://randomuser.me/api/portraits/men/36.jpg",
},
];





  @override
  Widget build(BuildContext context) {
final currentList =
    selectedIndex == 0 ? teachers : students;

    return SafeArea(
  child: Scaffold(

    backgroundColor: const Color(0xffF3F4F5),

    floatingActionButton: FloatingActionButton(
      onPressed: () {},

      backgroundColor: const Color(0xff24389C),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),

      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),

    body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),

            child: Column(
              children: [

                /// HEADER
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 10,
                    right: 10,
                  ),
                  child: HeaderSection(),
                ),

                const SizedBox(height: 40),

                /// TITLE
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Manage Users",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: "Lexend",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                /// SUBTITLE
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 20),
                    child: Text(
                      "Administer campus directory and user \nprivileges.",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w300,
                        color: Color(0xff454652),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// SEARCH BAR
Container(
  height: 57,
  width: 340,

  decoration: BoxDecoration(
    color: const Color(0xffFFFFFF),
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      color: Colors.black.withOpacity(0.3),
      width: 1,
    ),
  ),

  child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,

      hintText: "Search by names, ID or email...",
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Color(0xff757684),
        fontFamily: "Inter",
      ),

      prefixIcon: const Icon(
        Icons.search,
        color: Color(0xff757684),
      ),

      suffixIcon: const Icon(
        Icons.tune,
        color: Color(0xff24389C),
      ),

      contentPadding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
    ),
  ),
),

                const SizedBox(height: 25),

                /// ROUND TOGGLE BUTTON
                /// ROUND TOGGLE BUTTON
Container(
  width: 340,
  height: 52,
  padding: const EdgeInsets.all(4),

  decoration: BoxDecoration(
    color: const Color(0xffE7E7E7),
    borderRadius: BorderRadius.circular(30),
  ),

  child: Row(
    children: [

      /// TEACHERS
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },

          child: Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: selectedIndex == 0
                  ? Colors.white
                  : Colors.transparent,

              borderRadius: BorderRadius.circular(30),
            ),

            child: Text(
              "Teachers",

              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",

                color: selectedIndex == 0
                    ? const Color(0xff24389C)
                    : Colors.black54,
              ),
            ),
          ),
        ),
      ),

      /// STUDENTS
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },

          child: Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: selectedIndex == 1
                  ? Colors.white
                  : Colors.transparent,

              borderRadius: BorderRadius.circular(30),
            ),

            child: Text(
              "Students",

              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",

                color: selectedIndex == 1
                    ? const Color(0xff24389C)
                    : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),
SizedBox(height: 20,),
SizedBox(
  height: 500,
  

  child: ListView.separated(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),

    itemCount: currentList.length,

    separatorBuilder: (context, index) {
      return const SizedBox(height: 14);
    },

    itemBuilder: (context, index) {
      final user = currentList[index];

      return Container(
        height: 104.5,
        width: 250,
        padding: const EdgeInsets.all(14),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 12,
              spreadRadius: 1,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Row(
          children: [

           Container(
  height: 52,
  width: 52,

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(14),
  ),

  child: ClipRRect(
    borderRadius: BorderRadius.circular(14),

    child: Image.network(
      user["image"],
      fit: BoxFit.cover,
    ),
  ),
),

            const SizedBox(width: 14),

            /// TEXT SECTION
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    user["name"],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Lexend",
                      color: Color(0xff191C1D),
                    ),
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),

                        decoration: BoxDecoration(
                          color: const Color(0xffF3E8FF),
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Text(
                          user["role"],
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff7C3AED),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Text(
                        "ID: ${user["id"]}",
                        style: const TextStyle(
                          color: Color(0xff757684),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// ACTION ICONS
            Padding(
              padding: const EdgeInsets.only(left: 30,right:20),
              child: Row(
                children: const [
              
                  Icon(
                    Icons.edit,
                    color: Color(0xff757684),
                    size: 20,
                  ),
              
                  SizedBox(width: 20),
              
                  Icon(
                    Icons.delete_outline,
                    color: Color(0xff757684), 
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  ),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}