import 'package:dalemy_ex/app/route/routes.dart';
import 'package:flutter/material.dart';

mixin TodoEvent {
  todoPop(BuildContext context) {
    pop(context);
  }

  todoShowSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  todoShowDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }
}