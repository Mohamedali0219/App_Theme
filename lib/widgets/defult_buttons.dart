import 'package:flutter/material.dart';

defultElevatedButton({
  required Function() onPressed,
  required String text,
  Color backgroundColor = Colors.blue,
  Color foregroundColor = Colors.white,
}) =>
    ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 25),
      ),
    );

deflutTextButton({
  required onPressed,
  required String text,
}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Colors.black38, fontSize: 20),
      ),
    );
