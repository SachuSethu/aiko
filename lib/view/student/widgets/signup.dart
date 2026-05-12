import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/signupcontroller.dart';
import '../../color/colorpallet.dart';

class Signupfield extends StatelessWidget {
  const Signupfield({
    super.key,
    required this.controller,
  });

  final SignupController controller;

  Widget customField({
    required String title,
    required String hint,
    required IconData icon,
    required TextEditingController textController,
    bool obscure = false,
    Widget? suffixIcon,
    TextInputType keyboard =
        TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        /// TITLE
        Text(
          title,
          style: AppTextStyles.bodyMedium,
        ),

        const SizedBox(height: 6),

        /// FIELD
        TextField(
          controller: textController,

          obscureText: obscure,

          keyboardType: keyboard,

          decoration: InputDecoration(
            filled: true,

            fillColor:
                const Color.fromARGB(
              86,
              158,
              158,
              158,
            ),

            hintText: hint,

            prefixIcon: Icon(icon),

            suffixIcon: suffixIcon,

            enabledBorder:
                OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(14),

              borderSide:
                  const BorderSide(
                color: Colors.grey,
              ),
            ),

            focusedBorder:
                OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(14),

              borderSide:
                  const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
          ),
        ),

        const SizedBox(height: 18),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(16),

        boxShadow: [
          BoxShadow(
            color:
                const Color.fromARGB(
              25,
              0,
              0,
              0,
            ),

            blurRadius: 10,

            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        children: [

          /// FIRST NAME
          customField(
            title: "First Name",
            hint: "Enter first name",
            icon: Icons.person_outline,
            textController:
                controller.firstNameController,
          ),

          /// SECOND NAME
          customField(
            title: "Second Name",
            hint: "Enter second name",
            icon: Icons.person_2_outlined,
            textController:
                controller.secondNameController,
          ),

          /// EMAIL
          customField(
            title: "University Email",
            hint: "example@campus.edu",
            icon: Icons.email_outlined,
            keyboard:
                TextInputType.emailAddress,
            textController:
                controller.emailController,
          ),

          /// ROLL NUMBER
          customField(
            title: "Roll Number",
            hint: "Enter roll number",
            icon: Icons.badge_outlined,
            textController:
                controller.rollNumberController,
          ),

          /// ACCESS CODE
          customField(
            title: "Access Code",
            hint: "Enter access code",
            icon: Icons.key_outlined,
            textController:
                controller.accessCodeController,
          ),

          /// PASSWORD
          Obx(
            () => customField(
              title: "Password",
              hint: "Enter password",
              icon: Icons.lock_outline,

              obscure: controller
                  .isPasswordHidden.value,

              textController:
                  controller.passwordController,

              suffixIcon: IconButton(
                onPressed:
                    controller.togglePassword,

                icon: Icon(
                  controller
                          .isPasswordHidden
                          .value
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// SIGNUP BUTTON
          SizedBox(
            width: double.infinity,
            height: 55,

            child: Obx(
              () => ElevatedButton(
                onPressed:
                    controller.isLoading.value
                        ? null
                        : controller.signup,

                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      AppColors.primary,

                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                      16,
                    ),
                  ),
                ),

                child:
                    controller.isLoading.value
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .center,

                            children: [
                              Text(
                                "SIGN UP",
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
          ),

          const SizedBox(height: 30),

          /// DIVIDER
          Row(
            children: [

              const Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),

              const SizedBox(width: 10),

              Text(
                "OR CONTINUE WITH",
                style:
                    AppTextStyles.bodySmall,
              ),

              const SizedBox(width: 10),

              const Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// SOCIAL BUTTONS
          Row(
            children: [

              /// GOOGLE
              Expanded(
                child:
                    ElevatedButton.icon(
                  onPressed: () {},

                  icon: Image.asset(
                    'assets/icons/google.png',
                    height: 20,
                  ),

                  label: const Text(
                    "Google",
                  ),

                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.white,

                    foregroundColor:
                        Colors.black,

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                        16,
                      ),

                      side:
                          const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              /// PORTAL
              Expanded(
                child:
                    ElevatedButton.icon(
                  onPressed: () {},

                  icon: Image.asset(
                    'assets/icons/portal.png',
                    height: 20,
                  ),

                  label: const Text(
                    "Portal",
                  ),

                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.white,

                    foregroundColor:
                        Colors.black,

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                        16,
                      ),

                      side:
                          const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}