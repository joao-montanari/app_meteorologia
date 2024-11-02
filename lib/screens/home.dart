

import 'package:app_meteorologia/screens/weather.dart';
import 'package:app_meteorologia/utils/navigator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => navigatorPage(
                    context,
                    const WeatherPage(),
                    Operations.push,
                  ),
                  child: const Text('Clima'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}