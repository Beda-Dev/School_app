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
        title: const Text("Statistiques"),
      ),
      body: SingleChildScrollView(
        // Ajout du SingleChildScrollView
        child: Center(
          child: AspectRatio(
            aspectRatio: 1.9,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      color: AppColors.green600,
                      value: 25,
                      title: "70%",
                      radius: 50,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    PieChartSectionData(
                      color: AppColors.red500,
                      value: 25,
                      title: "25%",
                      radius: 50,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    PieChartSectionData(
                      color: AppColors.yellow200,
                      value: 5,
                      title: "5%",
                      radius: 50,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    // Ajout d'autres sections si nécessaire
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
