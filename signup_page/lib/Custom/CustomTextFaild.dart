import 'package:flutter/material.dart';
import '../Packages/Packages.dart';

class CustomTextFaild extends StatelessWidget {
  CustomTextFaild({
  super.key, 
  required this.hintText,
  this.formkey,
  this.validator,
  required this.controller});

String Function(String?)? validator;
  String hintText;
  GlobalKey? formkey = GlobalKey<FormState>();
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: formkey,
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)) ,
              borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          )),
          enabledBorder: const OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          hintText: hintText,
          hintStyle: CustomTextStyle.hintTextStyle
        ),
      ),
    );
  }
}
