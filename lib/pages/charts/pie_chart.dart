import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  static const textStyle = TextStyle(
    color: Colors.black,
    fontSize: 10,
    fontWeight: FontWeight.normal,
    overflow: TextOverflow.ellipsis
  );

  @override
  Widget build(BuildContext context) {

    return PieChart(
      swapAnimationDuration: const Duration(microseconds: 750),
      swapAnimationCurve: Curves.easeInOut,
      PieChartData(
        centerSpaceRadius: 80, 
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            setState(() {
              if (!event.isInterestedForInteractions ||
                  pieTouchResponse == null ||
                  pieTouchResponse.touchedSection == null) {
                touchedIndex = -1;
                return;
              }
              touchedIndex = pieTouchResponse
                  .touchedSection!.touchedSectionIndex;
            });
          },
        ),
        sections: showingSections()
      )
    );
  }

  List<PieChartSectionData> showingSections() {
      return [
      PieChartSectionData(
          titleStyle: textStyle,
          value: 20,
          color: Colors.blue,
          title: AppLocalizations.of(context)!.cheeseBurger,
          radius: 70
        ),PieChartSectionData(
          titleStyle: textStyle,
          value: 15,
          color: Colors.red,
          title: AppLocalizations.of(context)!.salmonNigiri,
          radius: 70
        ),
        PieChartSectionData(
          titleStyle: textStyle,
          value: 15,
          color: Colors.green,
          title: AppLocalizations.of(context)!.honeyPancake,
          radius: 70
        ),
        PieChartSectionData(
          titleStyle: textStyle,
          value: 10,
          color: Colors.yellow,
          title: AppLocalizations.of(context)!.cake,
          radius: 70
        ),
        PieChartSectionData(
          titleStyle: textStyle,
          value: 10,
          color: Colors.orange,
          title: AppLocalizations.of(context)!.pie,
          radius: 70
        ),
        PieChartSectionData(
          titleStyle: textStyle,
          value: 10,
          color: Colors.pink,
          title: AppLocalizations.of(context)!.smoothies,
          radius: 70
        ),
        PieChartSectionData(
          titleStyle: textStyle,
          value: 10,
          color: Colors.cyan,
          title: AppLocalizations.of(context)!.bread,
          radius: 70
        ),
        PieChartSectionData(
          titleStyle: textStyle,
          value: 10,
          color: Colors.lime,
          title: AppLocalizations.of(context)!.salad,
          radius: 70
      )
    ];
  }
}