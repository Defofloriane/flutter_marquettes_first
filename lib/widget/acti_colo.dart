import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


  List<Color> gradientColors = [
    Colors.orange,
    Colors.orange,
  ];
LineChartData activityData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      titlesData: FlTitlesData(
        show: false,
        leftTitles: SideTitles(
          showTitles: true, 
        ),
      ),
      borderData: FlBorderData(
          show: false,
      ),
      minX: 09,
      maxX: 1,
      minY: 0,
      maxY: 9,
   
      lineBarsData: [
        LineChartBarData(
          spots:  [
            FlSpot(0, 2),
            FlSpot(2.6, 9),
            FlSpot(4.9, 7),
            FlSpot(6.8, 9),
            FlSpot(8, 10),
            FlSpot(9.5, 8),
            FlSpot(11, 11),
            
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 2,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }