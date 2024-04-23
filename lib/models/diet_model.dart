import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
    required this.boxColor
  });

  static List<DietModel> getDiets(BuildContext context) {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: AppLocalizations.of(context)!.honeyPancake, 
        iconPath: 'assets/icons/honey-pancake.svg', 
        level: AppLocalizations.of(context)!.levelEasy, 
        duration: AppLocalizations.of(context)!.minutes(30), 
        calorie: AppLocalizations.of(context)!.kiloCalories(180), 
        viewIsSelected: true,
        boxColor: const Color(0xff92A3FD)
      )
    );

    diets.add(
      DietModel(
        name: AppLocalizations.of(context)!.bread, 
        iconPath: 'assets/icons/bread.svg', 
        level: AppLocalizations.of(context)!.levelEasy, 
        duration: AppLocalizations.of(context)!.minutes(20), 
        calorie: AppLocalizations.of(context)!.kiloCalories(230), 
        viewIsSelected: false,
        boxColor: const Color(0xffC58BF2)
      )
    );

    return diets;
  }
}