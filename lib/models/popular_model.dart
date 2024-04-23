import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;
  Color boxColor;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected,
    required this.boxColor
  });

  static List<PopularDietsModel> getPopularDiets(BuildContext context) {
    List<PopularDietsModel> popularDiets = [];

    popularDiets.add(
      PopularDietsModel(
        name: AppLocalizations.of(context)!.cheeseBurger, 
        iconPath: 'assets/icons/cheese-burger.svg', 
        level: AppLocalizations.of(context)!.levelMedium, 
        duration: AppLocalizations.of(context)!.minutes(30), 
        calorie: AppLocalizations.of(context)!.kiloCalories(230), 
        boxIsSelected: true,
        boxColor: const Color(0xff92A3FD)
        )
      );

      popularDiets.add(
      PopularDietsModel(
        name: AppLocalizations.of(context)!.salmonNigiri, 
        iconPath: 'assets/icons/salmon.svg', 
        level: AppLocalizations.of(context)!.levelMedium, 
        duration: AppLocalizations.of(context)!.minutes(20), 
        calorie: AppLocalizations.of(context)!.kiloCalories(120), 
        boxIsSelected: true,
        boxColor: const Color(0xffC58BF2)
        )
      );

      return popularDiets;
  }
}