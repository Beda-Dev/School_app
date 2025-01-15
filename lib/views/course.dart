import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/Centered_Text_Container.dart';

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
        title: const Text("Cours" , style: TextStyle(
          color: Colors.white ,
        ),),
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
              height: 9*(hauteurEcran / 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          text: "Electrotechnique",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Electrotechnique cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(
                        // Utilise une icône
                          text: "Electronique",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Electronique cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(
                          text: "Developpement web",
                          textSize: 15,
                          onTap: () {
                            if (kDebugMode) {
                              print("Developpement web");
                            }
                          },
                        ),
                        CenteredTextContainer(
                          text: "Anglais",
                          textSize: 20,
                          onTap: () {
                            if (kDebugMode) {
                              print("Anglais cliqué !");
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
                          text: "Mathematique Appliquer",
                          onTap: () {
                            if (kDebugMode) {
                              print("Mathematique  cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(
                          text: "Droit",
                          textSize: 20,
                          onTap: () {
                            if (kDebugMode) {
                              print(" Droit cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(// Utilise une icône
                          text: "Informatque",
                          onTap: () {
                            if (kDebugMode) {
                              print("Informatque cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(// Utilise une icône
                          text: "Redaction Memoire",
                          onTap: () {
                            if (kDebugMode) {
                              print("Redaction Memoire cliqué !");
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenteredTextContainer(// Utilise une icône
                          text: "Autres",
                          onTap: () {
                            if (kDebugMode) {
                              print("Autre cliqué !");
                            }
                          },
                        ),
                        CenteredTextContainer(// Utilise une icône
                          text: "+",
                          textSize: 50,
                          onTap: () {
                            if (kDebugMode) {
                              print("Redaction Memoire cliqué !");
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
