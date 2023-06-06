import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonutChart extends StatelessWidget {
  const DonutChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<double> tlValues = [50, 100];
    List<double> euroValues = [20, 30];
    List<double> dollarValues = [60, 80];

    double tlTotal = tlValues.reduce((value1, value2) => value1 + value2);
    double euroTotal = euroValues.reduce((value1, value2) => value1 + value2);
    double dollarTotal = dollarValues.reduce((value1, value2) => value1 + value2);

    return PieChart(
      PieChartData(
        centerSpaceRadius: 50,
        sections: [
          PieChartSectionData(
            color: Colors.blue,
            value: tlTotal,
            title: 'TL: ${tlTotal.toStringAsFixed(2)}',
            showTitle: true,
          ),
          PieChartSectionData(
            color: Colors.green,
            value: euroTotal,
            title: 'Euro: ${euroTotal.toStringAsFixed(2)}',
            showTitle: true,
          ),
          PieChartSectionData(
            color: Colors.purple,
            value: dollarTotal,
            title: 'Dollar: ${dollarTotal.toStringAsFixed(2)}',
            showTitle: true,
          ),
        ],
      ),
    );
  }
}
