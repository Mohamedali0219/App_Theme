import 'package:flutter/material.dart';

navigatTo(context, widget) => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );

navigatAndReplace(context, widget) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
