

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
  });

  final String? title;

  @override
  State<CustomAppBar> createState() => _CustomAppBar();
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.white
      ),
      actions: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  widget.title ?? "",
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    print('hello world');
                  },
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}