import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/custom_Container.dart';
import 'course_screen.dart';
import 'home_work.dart';
import 'calendar.dart';
import 'stats_screen.dart';
import 'Scolar_screen.dart';
import 'teacher_screen.dart';
import 'graduation_screen.dart';

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
                        "Bonjour Monsieur Kouassi",
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
                                  "Participant PLD | groupe 2",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 13,
                                  ),
                                ),
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
                                      builder: (context) =>
                                          const Course_screen()),
                                );
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.date_range_outlined,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Emploi du temps",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CalendarScreen()),
                                );
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
                            text: "Graduation",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CertificatPage()),
                                );
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.account_circle,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Participant",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ScolarScreen()));
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
                              Icons.add_chart,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Statistiques",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StatsScreen()),
                                );
                              }
                            },
                          ),
                          CustomContainer(
                            icon: const Icon(
                              Icons.people,
                              color: AppColors.blue800,
                              size: 50,
                            ), // Utilise une icône
                            text: "Corps enseignant",
                            onTap: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TeacherScreen()),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [],
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
                          icon: const Icon(Icons.book, size: 50),
                          textSize: 12,
                          text: 'Program for Leadership Development',
                          subText: "PLD groupe 2",
                          onTap: () {},
                          height: 170,
                          borderRadius: 20,
                          borderColor: AppColors.blue500,
                          borderWidth: 1,
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        CustomContainer(
                          icon: const Icon(
                            Icons.check_circle,
                            size: 50,
                          ),
                          textSize: 30,
                          text: '70%',
                          subText: "taux d'assiduité au session",
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
