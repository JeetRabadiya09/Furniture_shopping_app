import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/common/app_favorite.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

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
            SizedBox(
              height: screenHeight / 40,
            ),
            const Text(
              "Favorites",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            const AppFavorites(
              image: AppAssets.f1,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.lightgrey2,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.f2,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.lightgrey2,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.f3,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.lightgrey2,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.f4,
            ),
            SizedBox(height: screenHeight / 30),
            AppButton(
              height: screenHeight / 15,
              width: screenWidth / 1.1,
              elevated: "Add to my cart",
            ),
          ],
        ),
      ),
    );
  }
}
