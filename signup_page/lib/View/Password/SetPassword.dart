


import '../../Packages/Packages.dart';

class SetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: Get.height,
              width: Get.width,
              padding: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxHeight: 400,
                            minHeight: 200,
                            maxWidth: double.infinity,
                            minWidth: double.infinity / 2),
                        child: Image.asset(
                          "images/ResetPassword.jpg",
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Set Password",
                        style: CustomTextStyle.textStyle),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    GetBuilder<PasswordController>(
                      init: PasswordController(),
                      builder: (PasswordController) {
                        return CustomTextFaild(
                          controller: PasswordController.passwordController,
                          hintText: "8+ Characters, 1Capital letter",
                          validator: (value) {
                            if (value!.length < 8) {
                              return "The Password Shulde be more than 8";
                            } else {
                              return "";
                            }
                          },
                        );
                      },
                    ),
                    Text("Re-enter Password",
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    Reenter_Password(),
                    CheckboxAndTearmsWithCondations(),
                    const SizedBox(
                      height: 15,
                    ),
                    SignupButton()
                  ],
                ),
              )),
        ],
      ),
    );
  }
}




