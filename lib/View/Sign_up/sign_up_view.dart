import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../res/common/app_button.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';
import '../../utils/Routes/routes_name.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: ListView(
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.8,
                        indent: 23,
                        endIndent: 5,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    SizedBox(width: screenWidth / 60),
                    Image.asset(
                      AppAssets.sofa,
                      height: screenHeight / 11,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.8,
                        endIndent: 23,
                        indent: 5,
                        color: AppColors.lightGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 50),
                const Text(
                  textAlign: TextAlign.center,
                  AppStrings.welcome,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: screenHeight / 50),
                Container(
                  height: screenHeight / 1.43,
                  width: screenWidth / 1.1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: const [
                      BoxShadow(blurRadius: 04, color: Color(0xFFD9D9D9))
                    ],
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: AppColors.lightGrey,
                    //     offset: Offset(1.4, 1.4),
                    //     blurRadius: 10,
                    //     spreadRadius: 2,
                    //   ),
                    // ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 20),
                      Container(
                        height: screenHeight / 9.7,
                        width: screenWidth / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightgrey2,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenWidth / 40,
                                  left: screenWidth / 20),
                              child: const Text(
                                "Name",
                                style: TextStyle(
                                  color: AppColors.grey2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            TextFormField(
                              // controller: emailcontroller,
                              validator: (value) {
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                                  return "Enter email id ";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: "Enter email ",
                                contentPadding: EdgeInsets.all(12),
                                hintStyle: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins"),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Container(
                        height: screenHeight / 9.7,
                        width: screenWidth / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightgrey2,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenWidth / 40,
                                  left: screenWidth / 20),
                              child: const Text(
                                "Email",
                                style: TextStyle(
                                  color: AppColors.grey2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            TextFormField(
                              // controller: emailcontroller,
                              validator: (value) {
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                                  return "Enter email id ";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: "Enter password ",
                                contentPadding: EdgeInsets.all(12),
                                hintStyle: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins"),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Container(
                        height: screenHeight / 9.7,
                        width: screenWidth / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightgrey2,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenWidth / 40,
                                  left: screenWidth / 20),
                              child: const Text(
                                "Password",
                                style: TextStyle(
                                  color: AppColors.grey2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            TextFormField(
                              // controller: emailcontroller,
                              validator: (value) {
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                                  return "Enter email id ";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: "Enter password ",
                                contentPadding: EdgeInsets.all(12),
                                hintStyle: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins"),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Container(
                        height: screenHeight / 9.7,
                        width: screenWidth / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightgrey2,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenWidth / 40,
                                  left: screenWidth / 20),
                              child: const Text(
                                "Confirm password",
                                style: TextStyle(
                                  color: AppColors.grey2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            TextFormField(
                              // controller: emailcontroller,
                              validator: (value) {
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                                  return "Enter email id ";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: "Enter confirm password ",
                                contentPadding: EdgeInsets.all(12),
                                hintStyle: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins"),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 45,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth / 30, right: screenWidth / 30),
                        child: const AppButton(
                          elevated: "Sign up ",
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesName.loginView);
                        },
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Already have account?",
                            style: TextStyle(
                              color: AppColors.gray,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: " Sign in",
                                style: TextStyle(
                                  color: AppColors.lightBlackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
