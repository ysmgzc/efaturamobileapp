import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class FinancialData {
  final String type;
  final double amount;

  FinancialData(this.type, this.amount);
}

class SimpleBarChart extends StatefulWidget {
  final List<FinancialData> data;
  final bool animate;

 const SimpleBarChart({
    Key? key,
    required this.data, 
    this.animate = false
    }): super(key: key);

  @override
  _SimpleBarChartState createState() => _SimpleBarChartState();
}

class _SimpleBarChartState extends State<SimpleBarChart> {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<FinancialData, String>> seriesList = _createSampleData();

    return  charts.BarChart(
      seriesList,
      animate: widget.animate,
      domainAxis:const  charts.OrdinalAxisSpec(
        showAxisLine: false,
        renderSpec:  charts.SmallTickRendererSpec(
          labelStyle:  charts.TextStyleSpec(
            fontSize: 18,
            color: charts.MaterialPalette.black,
          ),
          axisLineStyle: charts.LineStyleSpec(
            thickness: 0,
            color: charts.MaterialPalette.transparent,
          ),
        ),
      ),
      primaryMeasureAxis:const  charts.NumericAxisSpec(
        tickProviderSpec: charts.BasicNumericTickProviderSpec(desiredTickCount: 10),
        renderSpec:  charts.GridlineRendererSpec(
          lineStyle:  charts.LineStyleSpec(
            thickness: 1, 
          ),
        ),
      ),
    );
  }

  List<charts.Series<FinancialData, String>> _createSampleData() {
    return [
       charts.Series<FinancialData, String>(
        id: 'Financial',
        domainFn: (FinancialData finance, _) => finance.type,
        measureFn: (FinancialData finance, _) => finance.amount,
        data: widget.data,
        colorFn: (FinancialData finance, _) =>
          finance.type == '' ? charts.MaterialPalette.red.shadeDefault : charts.MaterialPalette.blue.shadeDefault,
      ),
    ];
  }
}
