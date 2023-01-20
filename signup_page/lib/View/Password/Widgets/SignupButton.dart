import '../../../Packages/Packages.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckboxController>(
      init: CheckboxController(),
      builder: (CheckboxController) {
        return CustomButton(
          // final isvald = formkey.cu
          buttonName: "Sign up",
          onPressed: () {
            if (CheckboxController
                    .isAgreeOnTearmsAndCondation ==
                true) {
              Get.toNamed(NameOfRoute.signUp);
            } else {
              Get.snackbar("You Can\'t Move On",
                  "Please Agree on Terms And Condations");
            }
            print("Sign up");
          },
        );
      },
    );
  }
}