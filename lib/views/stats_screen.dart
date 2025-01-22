import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../utils/colors.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue800,
        title: const Text("Statistiques",
        style: TextStyle(
          color: AppColors.white,
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Assiduité et ponctualité  au cours ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                AspectRatio(
                  aspectRatio: 1.5,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: AppColors.green600,
                          value: 60,
                          title: "60%",
                          radius: 50,
                          titleStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        PieChartSectionData(
                          color: AppColors.blue400,
                          value: 40,
                          title: "40%",
                          radius: 50,
                          titleStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        PieChartSectionData(
                          color: AppColors.red500,
                          value: 20,
                          title: "20%",
                          radius: 50,
                          titleStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                      centerSpaceRadius: 40,
                      sectionsSpace: 2,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: AppColors.red500,
                          width: 15,
                            height: 15,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text("Absence")
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          color: AppColors.blue400,
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text("Retard")
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          color: AppColors.green600,
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text("Presence")
                      ],
                    ),

                  ],
                ),

                const SizedBox(height: 32),
                const Text(
                  "Évolution des moyennes au cour de l'année",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
              AspectRatio(
                aspectRatio: 1.5,
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(1, 12),
                          const FlSpot(2, 14),
                          const FlSpot(3, 14),
                          const FlSpot(4, 15),
                          const FlSpot(5, 16),
                        ],
                        isCurved: true,
                        color: AppColors.green600,
                        barWidth: 4,
                        belowBarData: BarAreaData(show: true, color: AppColors.green600.withOpacity(0.3)),
                      ),
                    ],
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          reservedSize: 44,
                          showTitles: true,
                          interval: 2,
                          getTitlesWidget: (value, meta) {
                            return Text(value.toString(), style: const TextStyle(fontSize: 12));
                          },
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          reservedSize: 44,
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 1:
                                return const Text('Janv');
                              case 2:
                                return const Text('Fév');
                              case 3:
                                return const Text('Mars');
                              case 4:
                                return const Text('Avril');
                              case 5:
                                return const Text('Mai');
                              default:
                                return const Text('');
                            }
                          },
                        ),
                      ),
                    ),
                    gridData: const FlGridData(show: true),
                    borderData: FlBorderData(show: true),
                  ),
                ),
              ),

                const SizedBox(height: 32),
                const Text(
                  "Répartition des étudiants",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                AspectRatio(
                  aspectRatio: 1.5,
                  child: BarChart(
                    BarChartData(
                      barGroups: [
                        BarChartGroupData(
                          x: 1,
                          barRods: [
                            BarChartRodData(
                              toY: 150,
                              color: AppColors.green600,
                              width: 20,
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(
                              toY: 200,
                              color: AppColors.blue400,
                              width: 20,
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barRods: [
                            BarChartRodData(
                              toY: 170,
                              color: AppColors.yellow200,
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                      titlesData: const FlTitlesData(
                        leftTitles: AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
                        bottomTitles: AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true))
                      ),
                      borderData: FlBorderData(show: true),
                      gridData: const FlGridData(show: true),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
