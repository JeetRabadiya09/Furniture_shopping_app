import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> furnitureList = [
      {
        "popularImage": AppAssets.simpleLamp,
        "price": "\$ 12.00",
        "history": AppStrings.hBlack,
      },
      {
        "popularImage": AppAssets.minimalStand,
        "price": "\$ 25.00",
        "history": AppStrings.hMinimal,
      },
      {
        "popularImage": AppAssets.coffeeChair,
        "price": "\$ 12.00",
        "history": AppStrings.hCoffee,
      },
      {
        "popularImage": AppAssets.simpleDesk,
        "price": "\$ 12.00",
        "history": AppStrings.hSimple,
      }
    ];
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.search,
          size: 20,
          color: AppColors.greyL,
        ),
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "MAKE HOME",
              style: TextStyle(
                color: AppColors.greyL,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              "BEAUTIFUL",
              style: TextStyle(
                color: AppColors.greyL,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.shopping_cart_outlined,
            size: 20,
            color: AppColors.greyL,
          )
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Row(children: [
                Container(
                  width: screenWidth / 10,
                  height: screenHeight / 20,
                  decoration: const BoxDecoration(
                    color: AppColors.bg,
                  ),
                  child: Image.asset(
                    AppAssets.star,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: screenWidth / 10,
                  height: screenHeight / 20,
                  decoration: const BoxDecoration(
                    color: AppColors.bg,
                  ),
                  child: Image.asset(
                    AppAssets.chair,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: screenWidth / 10,
                  height: screenHeight / 20,
                  decoration: const BoxDecoration(
                    color: AppColors.bg,
                  ),
                  child: Image.asset(AppAssets.table),
                ),
              ]),
            ),
          ),
          // Expanded(
          //   child: GridView.builder(
          //       shrinkWrap: true,
          //       physics: const NeverScrollableScrollPhysics(),
          //       itemCount: furnitureList.length,
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         mainAxisSpacing: 25,
          //         crossAxisSpacing: 20,
          //         mainAxisExtent: 280,
          //       ),
          //       itemBuilder: (context, index) {
          //         Column(
          //           // mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Image.asset(
          //               furnitureList[index]["popularImage"],
          //               height: screenHeight / 10,
          //               width: screenWidth / 5,
          //             ),
          //             Text(
          //               furnitureList[index]["history"],
          //               style: const TextStyle(
          //                 color: AppColors.greyL,
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //             Text(
          //               furnitureList[index]["price"],
          //               style: const TextStyle(
          //                 color: AppColors.black,
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ],
          //         );
          //       }),
          // ),
        ],
      ),
    );
  }
}
//
// import 'package:flutter/material.dart';
// import 'package:furniture_shopping_app/res/constant/app_assets.dart';
// import 'package:furniture_shopping_app/res/constant/app_colors.dart';
// import 'package:furniture_shopping_app/res/constant/app_strings.dart';
//
// class HomeView extends StatelessWidget {
//   const HomeView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> furnitureList = [
//       {
//         "populerImage": AppAssets.light,
//         "price": "\$ 12.00",
//         "history": AppStrings.hBlack,
//       },
//       {
//         "populerImage": AppAssets.bchair,
//         "price": "\$ 25.00",
//         "history": AppStrings.hMinimal,
//       },
//       {
//         "populerImage": AppAssets.table,
//         "price": "\$ 12.00",
//         "history": AppStrings.hCoffee,
//       },
//       {
//         "populerImage": AppAssets.stool,
//         "price": "\$ 12.00",
//         "history": AppStrings.hSimple,
//       }
//     ];
//     Size size = MediaQuery.of(context).size;
//     double screenHeight = size.height;
//     double screenWidth = size.width;
//     EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(
//           Icons.search,
//           size: 20,
//           color: AppColors.sub,
//         ),
//         centerTitle: true,
//         title: const Column(
//           children: [
//             Text(
//               "MAKE HOME",
//               style: TextStyle(
//                 color: AppColors.sub,
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//               ),
//             ),
//             Text(
//               "BEAUTIFUL",
//               style: TextStyle(
//                 color: AppColors.sub,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//         actions: const [
//           Icon(
//             Icons.shopping_cart_outlined,
//             size: 20,
//             color: AppColors.sub,
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: 4,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) => Container(
//                 width: screenWidth / 10,
//                 height: 10,
//                 child: Image.asset(
//                   AppAssets.roundCh,
//                 ),
//                 decoration: const BoxDecoration(
//                   color: AppColors.bg,
//                 ),
//               ),
//             ),
//           ),
// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child: Padding(
//     padding: const EdgeInsets.only(left: 1),
//     child: Row(children: [
//
//       const SizedBox(width: 20),
//       Container(
//         width: screenWidth / 10,
//         height: screenHeight / 20,
//         child: Image.asset(
//           AppAssets.roundCh,
//         ),
//         decoration: const BoxDecoration(
//           color: AppColors.bg,
//         ),
//       ),
//       const SizedBox(width: 20),
//       Container(
//         width: screenWidth / 10,
//         height: screenHeight / 20,
//         child: Image.asset(AppAssets.roundCh),
//         decoration: const BoxDecoration(
//           color: AppColors.bg,
//         ),
//       ),
//     ]),
//   ),
// ),
//           Expanded(
//             child: GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: furnitureList.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 25,
//                   crossAxisSpacing: 20,
//                   mainAxisExtent: 280,
//                 ),
//                 itemBuilder: (context, index) {
//                   Column(
//                     // mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         furnitureList[index]["populerImage"],
//                         height: screenHeight / 10,
//                         width: screenWidth / 5,
//                       ),
//                       Text(
//                         furnitureList[index]["history"],
//                         style: const TextStyle(
//                           color: AppColors.sub,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       Text(
//                         furnitureList[index]["price"],
//                         style: const TextStyle(
//                           color: AppColors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
