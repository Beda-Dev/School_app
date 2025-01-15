import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../utils/colors.dart';
import '../widgets/custom_Container.dart';
import 'course.dart';
import 'home_work.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double hauteurEcran = MediaQuery.of(context).size.height;
    double largeurEcran = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.blue800,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: largeurEcran,
              height: (hauteurEcran / 3) + 50,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Bonjour Beda",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Licence 3 Genie Electrique | cours du soir",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),

                                Icon(
                                  Icons.supervised_user_circle_outlined,
                                  size: 60,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: const Center(
                              child: Text(
                            "2024-2025",
                            style: TextStyle(
                              color: AppColors.blue800,
                            ),
                          )),
                        )),
                  ],
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  width: largeurEcran,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            icon: const Icon(
                              Icons.library_books,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Cours",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Course_screen()),
                                );
                              };
                              if (kDebugMode) {
                                print("Cours cliqué !");
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.assignment,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Devoirs",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeWork()),
                                );
                              };
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            icon: const Icon(
                              Icons.grade,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Notes trimestrielle",
                            onTap: () {
                              if (kDebugMode) {
                                print("note cliqué !");
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.book,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Bibliothèque",
                            onTap: () {
                              if (kDebugMode) {
                                print("Bibliothèque cliqué !");
                              }
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            icon: const Icon(
                              Icons.school,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Scolarité",
                            onTap: () {
                              if (kDebugMode) {
                                print("Scolarié cliqué !");
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.people,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "classe",
                            onTap: () {
                              if (kDebugMode) {
                                print(" class cliqué !");
                              }
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            icon: const Icon(
                              Icons.date_range_outlined,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Emploie du temps",
                            onTap: () {
                              if (kDebugMode) {
                                print("Emploie du temps cliqué !");
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.add_chart,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Statistique",
                            onTap: () {
                              if (kDebugMode) {
                                print("Statistique cliqué !");
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top:
                        -100, // Placé au-dessus du Container, juste au bord supérieur
                    left: largeurEcran / 2 - 155,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomContainer(
                            icon: const Icon(Icons.supervised_user_circle_rounded , size: 50 ),
                            textSize: 30,
                            text: '80.37%',
                          subText: "Attendance",
                            onTap: () {} ,
                            height: 170,
                          borderRadius: 20,
                          borderColor: AppColors.blue500,
                          borderWidth: 1,
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        CustomContainer(
                            icon: const Icon(Icons.school , size: 50,),
                          textSize: 30,
                          text: '6047',
                          subText: "free due",
                          onTap: () {},
                          height: 170,
                          borderRadius: 20,
                          borderColor: AppColors.blue500,
                          borderWidth: 1,
                          backgroundColor: Colors.white,

                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
