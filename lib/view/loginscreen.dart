
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controller/login_controller.dart.dart';
import 'package:project_flutter/view/color/colorpallet.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller =
      Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [
              Colors.white,
              Color.fromARGB(255, 167, 165, 165),
            ],
          ),
        ),

        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
             

                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight:
                        constraints.maxHeight,
                  ),

                  child: Padding(
                    padding:
                      EdgeInsets.only(
                      top: 15,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),

                    child: Column(
                      children: [

                        /// LOGO
                        Center(
                          child: Image.asset(
                            'assets/icons/logo.png',
                            height: 120,
                          ),
                        ),

                        // const SizedBox(
                        //     height: 10),

                        /// TITLE
                        Text(
                          "CampuSphere",
                          style:
                              AppTextStyles
                                  .heading1,
                        ),

                        const SizedBox(height: 8),

                        /// SUBTITLE
                        Text(
                          "Welcome back to your academic hub",
                          style:
                              AppTextStyles
                                  .bodyLarge,
                          textAlign:
                              TextAlign.center,
                        ),

                        const SizedBox(
                            height: 35),

                        /// LOGIN CARD
                        Logincard(controller: controller),

                        const SizedBox(
                            height: 20),

                        /// CREATE ACCOUNT
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center,

                          children: [
                            Text(
                              "New to CampusConnect?",

                              style:
                                  AppTextStyles
                                      .bodyMedium,
                            ),

                            TextButton(
                              onPressed:
                                  () {},

                              child: Text(
                                "Create account",

                                style:
                                    AppTextStyles
                                        .bodyMedium
                                        .copyWith(
                                  color:
                                      AppColors
                                          .primary,
                                ),
                              ),
                            ),
                          ],
                        ),

                        /// FOOTER
                        Wrap(
                          alignment:
                              WrapAlignment
                                  .center,

                          spacing: 10,

                          children: [

                            TextButton(
                              onPressed:
                                  () {},

                              child: Text(
                                "Help Center",

                                style:
                                    AppTextStyles
                                        .bodyMedium,
                              ),
                            ),

                            TextButton(
                              onPressed:
                                  () {},

                              child: Text(
                                "Privacy",

                                style:
                                    AppTextStyles
                                        .bodyMedium,
                              ),
                            ),

                            TextButton(
                              onPressed:
                                  () {},

                              child: Text(
                                "Terms of Service",

                                style:
                                    AppTextStyles
                                        .bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Logincard extends StatelessWidget {
  const Logincard({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          MediaQuery.of(
                    context,
                  )
                  .size
                  .width *
              0.9,
    
      padding:
          const EdgeInsets.all(
        20,
      ),
    
      decoration:
          BoxDecoration(
        color: Colors.white,
    
        borderRadius:
            BorderRadius
                .circular(
          16,
        ),
    
        boxShadow: [
          BoxShadow(
            color:
                const Color.fromARGB(
              31,
              49,
              46,
              46,
            ),
    
            blurRadius: 12,
    
            offset:
                const Offset(
              0,
              4,
            ),
          ),
        ],
      ),
    
      child: Column(
        children: [
    
          /// EMAIL TITLE
          Align(
            alignment:
                Alignment
                    .centerLeft,
    
            child: Text(
              "University Email",
    
              style:
                  AppTextStyles
                      .bodyMedium,
            ),
          ),
    
          const SizedBox(
              height: 5),
    
          /// EMAIL FIELD
          TextField(
            controller:
                controller
                    .emailController,
    
            keyboardType:
                TextInputType
                    .emailAddress,
    
            decoration:
                InputDecoration(
              filled: true,
    
              fillColor:
                  const Color.fromARGB(
                86,
                158,
                158,
                158,
              ),
    
              hintText:
                  "example@campus.edu",
    
              prefixIcon:
                  const Icon(
                Icons
                    .email_outlined,
              ),
    
              border:
                  OutlineInputBorder(
                borderRadius:
                    BorderRadius.only(
                  topLeft:
                      Radius.circular(
                    30,
                  ),
    
                  topRight:
                      Radius.circular(
                    10,
                  ),
    
                  bottomLeft:
                      Radius.circular(
                    5,
                  ),
    
                  bottomRight:
                      Radius.circular(
                    25,
                  ),
                ),
              ),
    
              enabledBorder:
                  OutlineInputBorder(
                borderRadius:
                    BorderRadius.only(
                  topLeft:
                      Radius.circular(
                    10,
                  ),
    
                  topRight:
                      Radius.circular(
                    10,
                  ),
    
                  bottomLeft:
                      Radius.circular(
                    10,
                  ),
    
                  bottomRight:
                      Radius.circular(
                    10,
                  ),
                ),
    
                borderSide:
                    const BorderSide(
                  color:
                      Colors.grey,
                ),
              ),
    
              focusedBorder:
                  OutlineInputBorder(
                borderRadius:
                    BorderRadius
                        .circular(
                  16,
                ),
    
                borderSide:
                    const BorderSide(
                  color:
                      Colors.blue,
    
                  width: 2,
                ),
              ),
            ),
          ),
    
          const SizedBox(
              height: 10),
    
          /// PASSWORD ROW
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
    
            children: [
              Text(
                "Password",
    
                style:
                    AppTextStyles
                        .bodyMedium,
              ),
    
              TextButton(
                onPressed:
                    () {},
    
                child: Text(
                  "Forgot?",
    
                  style:
                      AppTextStyles
                          .bodyMedium
                          .copyWith(
                    color:
                        AppColors
                            .primary,
                  ),
                ),
              ),
            ],
          ),
    
          const SizedBox(
              height: 3),
    
          /// PASSWORD FIELD
          Obx(
            () => TextField(
              controller:
                  controller
                      .passwordController,
    
              obscureText:
                  controller
                      .isPasswordHidden
                      .value,
    
              decoration:
                  InputDecoration(
                filled: true,
    
                fillColor:
                    const Color.fromARGB(
                  86,
                  158,
                  158,
                  158,
                ),
    
                hintText:
                    "Enter your password",
    
                prefixIcon:
                    const Icon(
                  Icons
                      .lock_outline,
                ),
    
                suffixIcon:
                    IconButton(
                  onPressed:
                      controller
                          .togglePassword,
    
                  icon: Icon(
                    controller
                            .isPasswordHidden
                            .value
                        ? Icons
                            .visibility_off
                        : Icons
                            .visibility,
                  ),
                ),
    
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.only(
                    topLeft:
                        Radius.circular(
                      30,
                    ),
    
                    topRight:
                        Radius.circular(
                      10,
                    ),
    
                    bottomLeft:
                        Radius.circular(
                      5,
                    ),
    
                    bottomRight:
                        Radius.circular(
                      25,
                    ),
                  ),
                ),
    
                enabledBorder:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius
                          .circular(
                    10,
                  ),
    
                  borderSide:
                      const BorderSide(
                    color:
                        Colors.grey,
                  ),
                ),
    
                focusedBorder:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.only(
                    topLeft:
                        Radius.circular(
                      30,
                    ),
    
                    topRight:
                        Radius.circular(
                      10,
                    ),
    
                    bottomLeft:
                        Radius.circular(
                      5,
                    ),
    
                    bottomRight:
                        Radius.circular(
                      25,
                    ),
                  ),
    
                  borderSide:
                      const BorderSide(
                    color:
                        Colors.blue,
    
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
    
          const SizedBox(
              height: 30),
    
          /// LOGIN BUTTON
          SizedBox(
            width:
                double.infinity,
    
            height: 55,
    
            child:
                ElevatedButton(
              onPressed:
                  () {},
    
              style:
                  ElevatedButton
                      .styleFrom(
                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                    16,
                  ),
                ),
              ),
    
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center,
    
                children: [
                  Text(
                    "LOGIN",
    
                    style:
                        AppTextStyles
                            .buttonText,
                  ),
    
                  const SizedBox(
                      width: 8),
    
                  const Icon(
                    Icons
                        .arrow_forward,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
    
          const SizedBox(
              height: 30),
    
          /// DIVIDER
          Row(
            children: [
    
              Expanded(
                child:
                    Divider(
                  color:
                      Colors.grey,
                  thickness: 1,
                ),
              ),
    
              const SizedBox(
                  width: 10),
    
              Text(
                "OR CONTINUE WITH",
    
                style:
                    AppTextStyles
                        .bodySmall,
              ),
    
              const SizedBox(
                  width: 10),
    
              Expanded(
                child:
                    Divider(
                  color:
                      Colors.grey,
                  thickness: 1,
                ),
              ),
            ],
          ),
    
          const SizedBox(
              height: 20),
    
          /// SOCIAL BUTTONS
          Row(
            children: [
    
              Expanded(
                child:
                    ElevatedButton
                        .icon(
                  onPressed:
                      () {},
    
                  icon:
                      Image.asset(
                    'assets/icons/google.png',
                    height:
                        20,
                  ),
    
                  label:
                      const Text(
                    "Google",
                  ),
    
                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors
                            .white,
    
                    foregroundColor:
                        Colors
                            .black,
    
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                        16,
                      ),
    
                      side:
                          const BorderSide(
                        color:
                            Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
    
              const SizedBox(
                  width: 10),
    
              Expanded(
                child:
                    ElevatedButton
                        .icon(
                  onPressed:
                      () {},
    
                  icon:
                      Image.asset(
                   'assets/icons/portal.png',
                    height:
                        20,
                  ),
    
                  label:
                       Text(
                    "Portal",
                  ),
    
                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors
                            .white,
    
                    foregroundColor:
                        Colors
                            .black,
    
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                        16,
                      ),
    
                      side:
                          const BorderSide(
                        color:
                            Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    
          const SizedBox(
              height: 20),
        ],
      ),
    );
  }
}