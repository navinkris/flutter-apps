import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor
  });

  static List<CategoryModel> getCategories(BuildContext context) {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: AppLocalizations.of(context)!.salad, 
        iconPath: 'assets/icons/salad.svg',
        boxColor: const Color(0xff92A3FD)
        )
    );

    categories.add(
      CategoryModel(
        name: AppLocalizations.of(context)!.cake, 
        iconPath: 'assets/icons/pancakes.svg',
        boxColor: const Color(0xffC58BF2)
        )
    );

    categories.add(
      CategoryModel(
        name: AppLocalizations.of(context)!.pie, 
        iconPath: 'assets/icons/pie.svg',
        boxColor: const Color(0xff92A3FD)
        )
    );

    categories.add(
      CategoryModel(
        name: AppLocalizations.of(context)!.smoothies, 
        iconPath: 'assets/icons/orange-juice.svg',
        boxColor: const Color(0xffC58BF2)
        )
    );

    return categories;
  }
}