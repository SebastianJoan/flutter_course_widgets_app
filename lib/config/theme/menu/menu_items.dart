
import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';

class MenuItem {

  final String tittle;
  final String subTittle;
  final String link;
  final String name;
  final IconData icon;

  const MenuItem({
    required this.tittle, 
    required this.subTittle, 
    required this.link, 
    required this.name, 
    required this.icon
  });
}

const appMenuItems = <MenuItem>[ 
  MenuItem(
    tittle: 'Botones' ,
    subTittle: 'Varios botones de flutter',
    link: '/buttons',
    name: ButtonsScreen.name,
    icon: Icons.smart_button_outlined,
  ), 
  MenuItem(
    tittle: 'Tarjetas' ,
    subTittle: 'Un Contenedor Estilizado',
    link: '/cards',
    name: CardsScreen.name,
    icon: Icons.credit_card,
  ),  
];