import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

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
          Stack(
            children: [
              Image.asset(
                AppAssets.product,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenWidth / 10, left: screenWidth / 20),
                child: Container(
                  height: screenHeight / 18,
                  width: screenWidth / 8,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.lightGrey,
                        offset: Offset(1.4, 1.4),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(top: screenWidth / 90, left: screenWidth / 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth / 40),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      textAlign: TextAlign.start,
                      AppStrings.minimalStand,
                      style: TextStyle(
                        color: AppColors.lb,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: screenWidth / 40),
                    const Text(
                      textAlign: TextAlign.start,
                      AppStrings.rupee,
                      style: TextStyle(
                        color: AppColors.lb,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.starProduct,
                      height: screenHeight / 30,
                      width: screenWidth / 10,
                    ),
                    const Text(
                      textAlign: TextAlign.start,
                      ("4.5"),
                      style: TextStyle(
                        color: AppColors.lb,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: screenWidth / 40),
                    const Text(
                      textAlign: TextAlign.start,
                      ("(50 reviews)"),
                      style: TextStyle(
                        color: AppColors.greyL,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 100),
                const Text(
                  textAlign: TextAlign.start,
                  ("Minimal Stand is made of by natural wood. The \n design that is very simple and minimal. This is\n truly one of the best furnitures in any family for\n now. With 3 different colors, you can easily\n select the best match for your home. "),
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight / 100),
                Row(
                  children: [
                    Container(
                      height: screenHeight / 18,
                      width: screenWidth / 8,
                      decoration: BoxDecoration(
                        color: AppColors.lightgrey2,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth / 40),
                        child: Image.asset(
                          AppAssets.marker,
                          color: AppColors.gray,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth / 10),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(AppColors.lb),
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
