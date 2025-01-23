import 'package:e_commerce/models/course_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
//import '../utils/courses_items.dart';
import '../widgets/Centered_Text_Container.dart';
import 'home_work.dart';

class Course_screen extends StatefulWidget {
  const Course_screen({super.key});

  @override
  State<Course_screen> createState() => _Course_screenState();
}

class _Course_screenState extends State<Course_screen> {
  List<Course> marketingConcurrentiel = [
    Course(
        day: '10',
        month: 'Janvier',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Lundi',
        time: '09:00 - 11:00'),
    Course(
        day: '17',
        month: 'Janvier',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Mardi',
        time: '10:00 - 12:00'),
    Course(
        day: '29',
        month: 'Janvier',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Mercredi',
        time: '14:00 - 16:00'),
    Course(
        day: '30',
        month: 'Janvier',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Jeudi',
        time: '08:00 - 10:00'),
    Course(
        day: '31',
        month: 'Janvier',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Vendredi',
        time: '11:00 - 13:00'),
    Course(
        day: '3',
        month: 'Février',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Lundi',
        time: '13:00 - 15:00'),
    Course(
        day: '10',
        month: 'Février',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Mardi',
        time: '09:00 - 11:00'),
    Course(
        day: '12',
        month: 'Février',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Mercredi',
        time: '16:00 - 18:00'),
    Course(
        day: '15',
        month: 'Février',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Jeudi',
        time: '12:00 - 14:00'),
    Course(
        day: '26',
        month: 'Février',
        subject: 'Marketing Concurrentiel',
        weekDay: 'Vendredi',
        time: '08:00 - 10:00'),
  ];

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
              padding: const EdgeInsets.all(20),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          text: "Marketing concurentiel",
                          textSize: 15,
                          onTap: () {
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: marketingConcurrentiel),
                                ),
                              );
                            }
                          },
                        ),
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Marketing strategique",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Marketing strategique cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          text: "Negociation",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Negociation cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(
                          text: "Comptabilite",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Comptabilité cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Ethique d'entreprise",
                          onTap: () {
                            if (kDebugMode) {
                              print("Ethique d'entreprise  cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(
                          text: "Leadership",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Leadership cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Economie",
                          onTap: () {
                            if (kDebugMode) {
                              print("Economie cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Etrepreneuriat",
                          onTap: () {
                            if (kDebugMode) {
                              print("Etrepreneuriat cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Travail et famille",
                          onTap: () {
                            if (kDebugMode) {
                              print("Travail et famille cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Transformation digitale",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Transformation digitale cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
