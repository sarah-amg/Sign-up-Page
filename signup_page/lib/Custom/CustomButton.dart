import '../Packages/Packages.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.buttonName, this.onPressed});
  void Function()? onPressed;
  String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    
      style: ElevatedButton.styleFrom(
        fixedSize: Size(Get.width, 55),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}
