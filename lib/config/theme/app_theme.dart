import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
  Colors.grey,
  Colors.black
];

class AppTheme {
  
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }) : assert(selectedColor >= 0 , 'Selected Colors must be grater then 0'),assert(selectedColor < colorList.length , 'Selected Colors must be less or equal than ${ colorList.length -1 } ');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme( // Obliga a todos los appbartheme a seguir la configuracion definida
      centerTitle: true //Configuracion para appbars que centra contenido
    )
  );
  
}