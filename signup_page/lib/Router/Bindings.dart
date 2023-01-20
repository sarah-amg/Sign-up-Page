import 'package:signup_page/Controller/CheckboxController.dart';
import 'package:signup_page/Controller/EmailController.dart';
import 'package:signup_page/Controller/PasswordController.dart';

import '../Packages/Packages.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PasswordController>(PasswordController());
    Get.put<EmailController>(EmailController());
    Get.put<CheckboxController>(CheckboxController());

  }
}

