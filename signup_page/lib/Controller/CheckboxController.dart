import 'package:signup_page/Packages/Packages.dart';

class CheckboxController extends GetxController {
  bool isAgreeOnTearmsAndCondation = false;

  checkboxFunction() {
    if (isAgreeOnTearmsAndCondation == false) {
      isAgreeOnTearmsAndCondation = true;
      print(isAgreeOnTearmsAndCondation);
    } else if (isAgreeOnTearmsAndCondation == true) {
      isAgreeOnTearmsAndCondation = false;
      print(isAgreeOnTearmsAndCondation);
    }
    update();
  }
}
