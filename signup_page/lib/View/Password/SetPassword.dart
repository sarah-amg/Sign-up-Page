


import '../../Packages/Packages.dart';

class SetPassword extends StatelessWidget {
  RegExp regex = RegExp(r'^(?=.*?[A-Z]).{8,}$');
  /*
r'^
  (?=.*[A-Z])       // should contain at least one upper case
  (?=.*[a-z])       // should contain at least one lower case
  (?=.*?[0-9])      // should contain at least one digit
  (?=.*?[!@#\$&*~]) // should contain at least one Special character
  .{8,}             // Must be at least 8 characters in length  
$
  */
  @override
  Widget build(BuildContext context) {
          print("regex======= $regex");
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
                          hintText: "8+ Characters, 1 Capital letter",
                          validator: (value) {
                            if (!regex.hasMatch(value!)) {
                              return "The Password Shulde be 8+ Characters, 1 Capital letter";
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




