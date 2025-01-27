import 'package:e_commerce/models/course_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/courses_items.dart';
import '../widgets/Centered_Text_Container.dart';
import 'home_work.dart';

class Course_screen extends StatefulWidget {
  const Course_screen({super.key});

  @override
  State<Course_screen> createState() => _Course_screenState();
}

class _Course_screenState extends State<Course_screen> {
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
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: marketingStrategique),
                                ),
                              );
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
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: negotiation),
                                ),
                              );
                            }
                          },
                        ),
                        CenteredTextContainer(
                          text: "Comptabilite",
                          textSize: 15,
                          onTap: () {
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: comptabilite),
                                ),
                              );
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
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: ethiqueEntreprise),
                                ),
                              );
                            }
                          },
                        ),
                        CenteredTextContainer(
                          text: "Leadership",
                          textSize: 15,
                          onTap: () {
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: leadership),
                                ),
                              );
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
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: economie),
                                ),
                              );
                            }
                          },
                        ),
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Etrepreneuriat",
                          onTap: () {
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: entrepreneuriat),
                                ),
                              );
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
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: travailEtFamille),
                                ),
                              );
                            }
                          },
                        ),
                        CenteredTextContainer(
                          // Utilise une icône
                          text: "Transformation digitale",
                          textSize: 15,
                          onTap: () {
                            if (mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeWork(courses: transformationDigitale),
                                ),
                              );
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
  }
}
