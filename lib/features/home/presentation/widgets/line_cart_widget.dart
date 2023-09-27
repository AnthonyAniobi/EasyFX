import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: chartData(),
        minX: 0,
        minY: 0,
        maxY: 6,
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(),
          leftTitles: AxisTitles(),
          rightTitles: AxisTitles(
              // axisNameWidget: const Text("naira/cfa"),
              ),
          bottomTitles: AxisTitles(
              // axisNameWidget: const Text("date"),
              ),
        ),
        gridData: FlGridData(
          show: false,
        ),
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.red,
          ),
        ),
        borderData: FlBorderData(show: false),
      ),
    );
  }

  List<LineChartBarData> chartData() => [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 2.5),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: AppColors.green,
          barWidth: 1,
          dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.green.withOpacity(0.3),
                  AppColors.green.withOpacity(0.1),
                  AppColors.green.withOpacity(0),
                ]),
          ),
        ),
      ];
}
