import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class AppFavorites extends StatelessWidget {
  final String? image;
  const AppFavorites({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(
            image ?? "",
            height: screenHeight / 9,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.minimal,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.gray,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: screenHeight / 120),
                const Text(
                  "\$25.00",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              const Icon(
                Icons.cancel_outlined,
              ),
              SizedBox(height: screenHeight / 25),
              Container(
                height: screenHeight / 30,
                width: screenWidth / 15,
                decoration: BoxDecoration(
                  color: AppColors.lightgrey2,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.shopping_bag,
                  size: 20,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
