import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../validator.dart';

class CustomForm extends StatelessWidget {
  var TextController;

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  final String hintTextValue;
  CustomForm({
    required this.hintTextValue,
    required this.TextController,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextController,
      focusNode: _focusEmail,
      validator: (value) {
        if (hintTextValue == 'Email') {
          return Validator.validateEmail(
            email: value,
          );
        } else if (hintTextValue == 'Password') {
          return Validator.validatePassword(
            password: value,
          );
        } else if (hintTextValue == 'Name') {
          return Validator.validateName(
            name: value,
          );
        }
        return null;
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintTextValue,
        filled: true,
        fillColor: Color(0xFF4F5B62),
        contentPadding: EdgeInsets.only(
          left: 24.w,
          bottom: 6.h,
          top: 8.h,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(153, 0, 0, 0),
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Color.fromARGB(153, 247, 247, 247),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Color.fromARGB(153, 255, 0, 0),
          ),
        ),
      ),
    );
  }
}
