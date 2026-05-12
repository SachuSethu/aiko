// import 'package:flutter/material.dart'; 
// import 'package:project_flutter/controller/signupcontroller.dart';
// import 'package:project_flutter/view/color/colorpallet.dart';

// import 'widgets/signup.dart';
// class StudentSignupscreen extends StatelessWidget {
//   const StudentSignupscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     backgroundColor: Colors.white,
//       appBar: AppBar(
//           centerTitle: false,
//         title: Text("CampuSphere", style: AppTextStyles.heading2),
        
       
//       ),
//      body:SafeArea(
//        child: Padding(
//          padding: const EdgeInsets.only(left: 16.0,right: 16),
//          child: SingleChildScrollView(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                const SizedBox(height: 20),
//                Text("Welcome,Scholar",
//                          style: AppTextStyles.heading0),
//                          const SizedBox(height: 8),
//                       Text("Join your academic community to access notes,\ncollaborate with peers,and manage your\nschedule",
//                        style: AppTextStyles.bodyMedium),
//                        const SizedBox(height: 10),
//                        Container(
//                           width: double.infinity, 
//                           height: 192.38, 
//                          decoration: BoxDecoration(
//                          image: const DecorationImage(
//                            image: NetworkImage(
//                              "https://i.pinimg.com/1200x/38/84/9f/38849f4bb1552020c983204271597421.jpg",
//                            ),
//                            fit: BoxFit.cover,
//                          ),
//                          borderRadius: BorderRadius.circular(20)
//                        ),
//                        ),
//                        Signupfield(controller: SignupController(),)
//              ],
//            ),
//          ),
//        ),
//      ),
//     );
//   }
// }

// // class bodytexts extends StatelessWidget {
// //   const bodytexts({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
      
// //        crossAxisAlignment:CrossAxisAlignment.start,
// //        children: [
// //           Text("Welcome,Scholar",
// //                       style: AppTextStyles.heading0),
// //                       SizedBox(height: 8),
// //                    Text("Join your academic community to access notes,\ncollaborate with peers,and manage your\nschedule",
// //                     style: AppTextStyles.bodyMedium),
// //                     SizedBox(height: 10),
// //                     Container(
// //                        width: 345, 
// //                        height: 192.38, 
// //                       decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                         image: NetworkImage(
// //                           "https://i.pinimg.com/1200x/38/84/9f/38849f4bb1552020c983204271597421.jpg",
// //                         ),
// //                         fit: BoxFit.cover,
// //                       ),
// //                       borderRadius: BorderRadius.circular(20)
// //                     ),
// //                     ),
// //                     Signupfield(controller: SignupController(),)
// //        ],
     
// //      );
// //   }
// // }



import 'package:flutter/material.dart';
import 'package:project_flutter/controller/signupcontroller.dart';
import 'package:project_flutter/view/color/colorpallet.dart';

import 'widgets/signup.dart';

class StudentSignupscreen extends StatelessWidget {
  StudentSignupscreen({super.key});

  final SignupController signupController = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: false,
            pinned: false,
centerTitle: false,
            title: Text(
              "CampuSphere",
              style: AppTextStyles.heading2,
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(height: 20),

                  Text(
                    "Welcome, Scholar",
                    style: AppTextStyles.heading0,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "Join your academic community to access notes,\n"
                    "collaborate with peers, and manage your\n"
                    "schedule.",
                    style: AppTextStyles.bodyMedium,
                  ),

                  const SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    height: 200,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/1200x/38/84/9f/38849f4bb1552020c983204271597421.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Signupfield(
                    controller: signupController,
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}