import 'package:flutter/gestures.dart';
import 'package:signup_page/Controller/EmailController.dart';
import 'package:signup_page/Custom/CustomButton.dart';
import 'package:signup_page/Custom/CustomTextFaild.dart';
import 'package:signup_page/Router/NameOfRoute.dart';
import '../../Packages/Packages.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                          "images/SignUp.jpg",
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Sign up", style: CustomTextStyle.textStyle),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Name",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    GetBuilder<EmailController>(
                      init: EmailController(),
                      builder: (EmailController) {
                        return CustomTextFaild(
                          controller: EmailController.nameController,
                          hintText: "Your Name",
                        );
                      },
                    ),
                    Text("Email",
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    GetBuilder<EmailController>(
                      init: EmailController(),
                      builder: (EmailController) {
                        return CustomTextFaild(
                          controller: EmailController.emailController,
                          hintText: "Example@example.com",
                        );
                      },
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                          children: [
                            TextSpan(
                              style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                              text: 'Log in',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('Tap Here onTap'),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      buttonName: "Continue",
                      onPressed: () {
                        Get.toNamed(NameOfRoute.setPassword);
                        print("Continue");
                      },
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
