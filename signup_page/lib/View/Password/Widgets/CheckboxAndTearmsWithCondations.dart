import '../../../Packages/Packages.dart';

class CheckboxAndTearmsWithCondations extends StatelessWidget {
  const CheckboxAndTearmsWithCondations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetBuilder<CheckboxController>(
          init: CheckboxController(),
          builder: (CheckboxController) {
            return Checkbox(
              activeColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(5), 
                ),
                value: CheckboxController
                    .isAgreeOnTearmsAndCondation,
                onChanged: (v) {
                  CheckboxController.checkboxFunction();
                  print(v);
                });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                text: 'By Creating an accunt you agree to the ',
                style: TextStyle(
                    color: Colors.black.withOpacity(
                      0.5,
                    ),
                    height: 1.5),
                children: [
                  TextSpan(
                    style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                    text: 'terms of use ',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('terms of use'),
                  ),
                  TextSpan(text: "and our ", children: [
                    TextSpan(
                      style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                      text: 'privacy policy.',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => print('privacy policy'),
                    ),
                  ]),
                ]),
          ),
        ),
      ],
    );
  }
}