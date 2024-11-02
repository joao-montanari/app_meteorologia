import 'package:flutter/material.dart';

enum Operations {
  push,
  pop,
}

void navigatorPage(
  BuildContext context, 
  Widget page,
  Operations operation,
  ) {
    switch(operation) {
      case Operations.push:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
        break;
      case Operations.pop:
        Navigator.pop(context);
        break;
    }
}