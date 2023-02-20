import 'package:flutter/material.dart';


void pint(String text) {
  debugPrint(text.toString());
}

void dialogMessage(
    {required BuildContext context,
    required Widget title,
    required Widget content,
    required List<Widget> actions}) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: title,
            content: content,
            actions: actions,
          ));
}
