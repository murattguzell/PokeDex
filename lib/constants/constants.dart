import 'dart:ui';

import 'package:flutter/material.dart';

class Constants{
  Constants._();

  static const String title = "Pokedex";
  static TextStyle getTitleStyle(){
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48
    );
  }
  static TextStyle getPokemonNameStyle(){
    return const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22
    );
  }
  static TextStyle getTypeChipStyle(){
    return const TextStyle(
        color: Colors.white,
        fontSize: 15
    );
  }
  static const String ballUrl ="assets/pokeball.png";

  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold);
  }

  static getPokeInfoValueTextStyle() {
    return TextStyle(fontSize: 16,color: Colors.black);

  }

}