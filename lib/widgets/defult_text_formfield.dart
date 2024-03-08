import 'package:flutter/material.dart';

defultTextFormField({
  Key? key,
  required TextEditingController controller,
  required String hintText,
  required IconData prefixIcon,
  Function(String)? onChanged,
  Function(String)? onFieldSubmitted,
  String? Function(String?)? validator,
  TextInputType? keyboardType,
  IconData? suffixIcon,
  Function()? changeSuffixIcon,
  bool obscureText = false,
}) =>
    TextFormField(
      key: key,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: IconButton(
          onPressed: changeSuffixIcon,
          icon: Icon(
            suffixIcon,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
