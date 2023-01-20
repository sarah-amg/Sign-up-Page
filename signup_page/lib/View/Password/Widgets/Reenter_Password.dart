
import '../../../Packages/Packages.dart';

class Reenter_Password extends StatelessWidget {
  const Reenter_Password({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PasswordController>(
      init: PasswordController(),
      builder: (PasswordController) {
        return CustomTextFaild(
          controller: PasswordController.repasswordController,
          hintText: "Please Re-enter Password",
          validator: (value) {
            if (value !=
                PasswordController.passwordController.text) {
              return "Wrong!";
            } else {
              return "True";
            }
          },
        );
      },
    );
  }
}
