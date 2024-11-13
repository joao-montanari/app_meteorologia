

import 'package:flutter/material.dart';

class CustomLoading extends StatefulWidget {
  const CustomLoading({
    super.key,
  });

  @override
  State<CustomLoading> createState() => _CustomLoading();
}

class _CustomLoading extends State<CustomLoading> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            strokeAlign: 5,
            strokeWidth: 5,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}