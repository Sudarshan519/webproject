import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final String label;
  final Color hintcolor;
  //final VoidCallback ontap;
  final bool obscureText;
  final double borderRadius;
  final Function validator;

  const CustomTextField(
      {Key key,
      this.controller,
      this.hintText,
      this.hintcolor,
      //    this.ontap,
      this.obscureText = false,
      TextInputType textInputType,
      this.prefixIcon,
      this.label,
      this.borderRadius,
      this.validator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(color: Colors.white),
        validator: validator,
        // if (label.toLowerCase() == 'password') {
        //   if (v.contains(RegExp(r'[A-Z]'))) return null;
        //   return 'Invalid password';
        // }
        // if (label.toLowerCase() == 'city' ||
        //     hintText.toLowerCase() == 'street') {
        //   if (v.length < 3)
        //     return 'Enter a valid $hintText';
        //   else
        //     return label;
        // }

        //validate phone
        // if (hintText.toLowerCase() == 'phone') {
        //   if (v.isPhoneNumber) {
        //     return null;
        //   } else
        //     return 'invalid phone number';
        // }
        //validate zip
        // if (hintText.toLowerCase() == 'zip') {
        //   if (v.isNum) {
        //     return null;
        //   } else
        //     return 'invalid';
        // } else
        //   return null;
        //},
        controller: controller,
        // onChanged: (v) {
        //   print(v);
        // },
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hintText,
            hintStyle: TextStyle(color: hintcolor),
            prefixIcon: Icon(prefixIcon),
            labelText: label,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius))));
  }
}
