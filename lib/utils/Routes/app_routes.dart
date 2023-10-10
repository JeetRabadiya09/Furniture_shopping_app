import 'package:furniture_shopping_app/View/Favorite/favorite_view.dart';
import 'package:furniture_shopping_app/View/Home/home_view.dart';
import 'package:furniture_shopping_app/View/Login/log_in_view.dart';
import 'package:furniture_shopping_app/View/Sign_up/sign_up_view.dart';
import 'package:furniture_shopping_app/utils/Routes/routes_name.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../View/Login/boarding.dart';
import '../../View/MainPage/mainpage.dart';
import '../../View/Product/product_view.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: RoutesName.boarding,
      page: () => const BoardingView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.loginView,
      page: () => const LoginView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.signupView,
      page: () => const SignUpView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.homeView,
      page: () => const HomeView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.productView,
      page: () => const ProductView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.favoriteview,
      page: () => const FavoriteView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.mainpageview,
      page: () => const MainPageView(),
      // binding: HomeBindings(),
    ),
  ];
}
