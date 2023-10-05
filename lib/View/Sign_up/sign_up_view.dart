import 'package:flutter/material.dart';

import '../../res/common/app_button.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

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
        body: Column(
          children: [
            SizedBox(height: screenHeight / 30),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
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
                    thickness: 1,
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
              height: screenHeight / 1.5,
              width: screenWidth / 1.1,
              decoration: const BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGrey,
                    offset: Offset(1.4, 1.4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight / 20),
                  Container(
                    height: screenHeight / 10,
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightgrey2,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenWidth / 40, left: screenWidth / 20),
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
                    height: screenHeight / 10,
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightgrey2,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenWidth / 40, left: screenWidth / 20),
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
                    height: screenHeight / 10,
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightgrey2,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenWidth / 40, left: screenWidth / 20),
                          child: const Text(
                            "password",
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
                    height: screenHeight / 10,
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightgrey2,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenWidth / 40, left: screenWidth / 20),
                          child: const Text(
                            "password",
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth / 30, right: screenWidth / 30),
                    child: const AppButton(
                      elevated: "Sign up ",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductView(),
                        ),
                      );
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
      ),
    );
  }
}
