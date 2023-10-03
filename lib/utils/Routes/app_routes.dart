import 'package:furniture_shopping_app/View/Login/log_in.dart';
import 'package:furniture_shopping_app/utils/Routes/routes_name.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../View/Login/boarding.dart';

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
  ];
}
