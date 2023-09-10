import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/new.dart';

class FlChartPage extends StatelessWidget {
  FlChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: points.map((e) => FlSpot(e.x, e.y)).toList(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 2,
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                      spots: points
                          .map((point) => FlSpot(point.x, point.y))
                          .toList(),
                      isCurved: false,
                      dotData: const FlDotData(
                        show: false,
                      ),
                      color: Colors.red),
                ],
                borderData: FlBorderData(
                    border:
                        const Border(bottom: BorderSide(), left: BorderSide())),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                  leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 2,
            child: BarChart(
              BarChartData(
                borderData: FlBorderData(
                    border:
                        const Border(bottom: BorderSide(), left: BorderSide())),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                  leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                ),
                barGroups: points
                    .map((e) => BarChartGroupData(
                          x: e.x.toInt(),
                          barRods: [
                            BarChartRodData(toY: e.y),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 2,
            child: PieChart(
              PieChartData(
                startDegreeOffset: 100,
                sectionsSpace: 0,
                pieTouchData: PieTouchData(enabled: true),
                centerSpaceRadius: 30,
                sections: [
                  PieChartSectionData(
                    value: 45,
                    color: Colors.greenAccent,
                    radius: 30,
                    showTitle: true,
                  ),
                  PieChartSectionData(
                    value: 35,
                    color: Colors.blue.shade900,
                    radius: 30,
                    showTitle: true,
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Colors.grey.shade400,
                    radius: 30,
                    showTitle: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: DTSolutionFabButton(),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 1:
              text = 'Jan';
              break;
            case 3:
              text = 'Mar';
              break;
            case 5:
              text = 'May';
              break;
            case 7:
              text = 'Jul';
              break;
            case 9:
              text = 'Sep';
              break;
            case 11:
              text = 'Nov';
              break;
          }

          return Text(
            text,
            style: const TextStyle(color: Colors.amber),
          );
        },
      );

  final List<FlSpot> points = [
    const FlSpot(10, 50),
    const FlSpot(20, 69),
    const FlSpot(30, 70),
    const FlSpot(60, 80),
    const FlSpot(70, 90),
    const FlSpot(80, 100),
    const FlSpot(90, 110),
  ];
  final List<FlSpot> points2 = [
    const FlSpot(10, 102),
    const FlSpot(20, 100),
    const FlSpot(30, 640),
    const FlSpot(60, 201),
    const FlSpot(70, 90),
    const FlSpot(80, 450),
    const FlSpot(90, 90),
  ];
  final List<FlSpot> points3 = [
    const FlSpot(20, 20),
    const FlSpot(20, 80),
    const FlSpot(30, 700),
    const FlSpot(60, 50),
    const FlSpot(70, 90),
    const FlSpot(80, 100),
    const FlSpot(90, 90),
  ];
}
