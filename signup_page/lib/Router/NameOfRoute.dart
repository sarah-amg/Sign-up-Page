import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:signup_page/Router/Bindings.dart';
import 'package:signup_page/View/SignUp/SignUp.dart';

import '../View/Password/SetPassword.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: NameOfRoute.signUp,
    page: () => SignUp(),
    binding: HomeBinding()

  ),
  GetPage(
    name: NameOfRoute.setPassword,
    page: () => SetPassword(),
    binding: HomeBinding()
  ),
];

class NameOfRoute {
  static String signUp = "/SignUp";
  static String setPassword = "/SetPassword";
}
