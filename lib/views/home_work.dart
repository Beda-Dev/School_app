import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../utils/colors.dart';
import '../widgets/Home_Work_Item.dart';
import '../models/course_model.dart';

class HomeWork extends StatefulWidget {
  final List<Course> courses;

  const HomeWork({super.key, required this.courses});

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
          "Cours ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: largeurEcran,
            height: (hauteurEcran / 10),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: GroupedListView<Course, String>(
                elements: widget.courses,
                groupBy: (course) => course.month, // Groupe par mois
                groupSeparatorBuilder: (String groupValue) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    groupValue,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                itemBuilder: (context, Course course) {
                  return HomeWorkItem(
                    day: course.day,
                    month: course.month,
                    subject: course.subject,
                    weekDay: course.weekDay,
                    time: course.time,
                    showButton: course.showButton,
                  );
                },
                itemComparator: (item1, item2) =>
                    item1.time.compareTo(item2.time),
                order: GroupedListOrder.ASC, // Tri ascendant
              ),
            ),
          ),
        ],
      ),
    );
  }
}
