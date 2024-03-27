import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xff208BC7),
        ),
        PieChartSectionData(
          value: 25,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 1 ? 2 : null,
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xff4DB7F2),
        ),
        PieChartSectionData(
          value: 20,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          value: 22,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
