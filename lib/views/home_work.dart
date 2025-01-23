import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/Home_Work_Item.dart';
import '../models/course_model.dart';

class HomeWork extends StatefulWidget {
  final List<Course> courses; // Liste de cours passée en paramètre

  const HomeWork(
      {super.key,
      required this.courses}); // Constructeur acceptant la liste de cours

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    double hauteurEcran = MediaQuery.of(context).size.height;
    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.blue800,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Cours",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: largeurEcran,
              height: (hauteurEcran / 10),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: largeurEcran,
              height: 9 * (hauteurEcran / 10),
              child: SingleChildScrollView(
                child: Column(
                  children: widget.courses.map((course) {
                    return SingleChildScrollView(
                      child: HomeWorkItem(
                        day: course.day,
                        month: course.month,
                        subject: course.subject,
                        weekDay: course.weekDay,
                        time: course.time,
                        showButton: course.showButton,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
