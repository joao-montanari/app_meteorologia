import 'package:flutter/material.dart';

class Design {
  const Design({
    required this.key,
    required this.backgroundImage,
    required this.color,
    required this.textColor,
    required this.iconImage,
  });

  final String key;
  final String backgroundImage;
  final Color color;
  final Color textColor;
  final String iconImage;
}

List<Design> weatherDesign = [
    const Design (
      key : "Chuva",
      backgroundImage : "assets/images/bg_chuva.jpg",
      color : const Color.fromARGB(1000, 59, 93, 139),
      textColor : const Color.fromARGB(1000, 97, 128, 165),
      iconImage : "assets/images/chuva.png",
    ),
    const Design (
      key : "Chuva com trovoadas",
      backgroundImage : "assets/images/bg_chuva_com_trovoadas.jpg",
      color : const Color.fromARGB(1000, 242, 191, 38),
      textColor : const Color.fromARGB(1000, 245, 204, 91),
      iconImage : "assets/images/chuva_com_trovoadas.png",
    ),
    const Design (
      key : "Sol",
      backgroundImage : "assets/images/bg_sol.jpg",
      color : const Color.fromARGB(1000, 242, 130, 119),
      textColor : const Color.fromARGB(1000, 248, 166, 158),
      iconImage : "assets/images/sol.png",
    ),
    const Design (
      key : "Nublado",
      backgroundImage : "assets/images/bg_nublado.jpg",
      color : const Color.fromARGB(1000, 102, 181, 175),
      textColor : const Color.fromARGB(1000, 149, 203, 200),
      iconImage : "assets/images/nublado.png",
    ),
];

Design findDesign(String weather) {
  Design result = const Design (
      key : "Chuva",
      backgroundImage : "assets/images/bg_chuva.jpg",
      color : const Color.fromARGB(1000, 59, 93, 139),
      textColor : const Color.fromARGB(1000, 97, 128, 165),
      iconImage : "assets/images/chuva.png",
    );

  for (int index = 0; index < weatherDesign.length; index++) {
    if(weatherDesign[index].key == weather) {
      result = weatherDesign[index];
    }
  }

  return result;
}