import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                OnBoardingAnimation(
                  pages: [
                    Image.asset(
                      alignment: Alignment.centerRight,
                      AppAssets.product,
                      // width: 325,
                      // height: 200,
                      cacheHeight: 470, cacheWidth: 320,
                    ),
                    Image.asset(
                      cacheHeight: 470, cacheWidth: 320,
                      alignment: Alignment.centerRight,
                      AppAssets.product,
                      // width: 325,
                      // height: 455,
                    ),
                    Image.asset(
                      alignment: Alignment.centerRight,
                      AppAssets.product,
                      // width: 325,
                      cacheHeight: 470, cacheWidth: 320,
                      // height: 455,
                    ),
                  ],
                  indicatorSwapType: SwapType.normal,
                  indicatorDotHeight: 7.0,
                  indicatorDotWidth: 7.0,
                  indicatorActiveDotColor: AppColors.black,
                  indicatorType: IndicatorType.expandingDots,
                  indicatorPosition: IndicatorPosition.bottomRight,
                ),
                // DotsIndicator(
                //   dotsCount: 3,
                //   position: ,
                // ),

                // Image.asset(
                //   AppAssets.product,
                // ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.lightGrey,
                          offset: Offset(1.4, 1.4),
                          blurRadius: 15,
                          spreadRadius: 1.5,
                        ),
                      ],
                    ),
                    child: BackButton(
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                    top: 150,
                    child: Image.asset(
                      AppAssets.color,
                      // height: 192,
                      width: 110,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: screenWidth / 20, left: screenWidth / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  textAlign: TextAlign.start,
                  AppStrings.minimalStand,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: screenWidth / 60),
                const Text(
                  textAlign: TextAlign.start,
                  AppStrings.rupee,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.star,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: screenWidth / 50),
                    const Text(
                      textAlign: TextAlign.start,
                      ("4.5"),
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: screenWidth / 40),
                    const Text(
                      textAlign: TextAlign.start,
                      ("(50 reviews)"),
                      style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 100),
                const Text(
                  textAlign: TextAlign.start,
                  ("Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. "),
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight / 40),
                Row(
                  children: [
                    Container(
                      height: screenHeight / 18,
                      width: screenWidth / 8,
                      decoration: BoxDecoration(
                        color: AppColors.lightgrey2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth / 40),
                        child: Image.asset(
                          AppAssets.saved,
                          color: AppColors.gray,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth / 15),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(AppColors.black),
                        fixedSize: MaterialStatePropertyAll(
                          Size(screenWidth / 1.5, screenHeight / 20),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
