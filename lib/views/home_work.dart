import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/Home_Work_Item.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

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
        title: const Text("Devoir" , style: TextStyle(
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
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    HomeWorkItem(
                      day: "16",
                      month: "Jan",
                      subject: "Physique",
                      weekDay: "Mardi",
                      time: "16h : 00",
                      showButton: true,
                    ),
                    HomeWorkItem(
                      day: "20",
                      month: "fev",
                      subject: "Electrotheque",
                      weekDay: "Mercredi",
                      time: "08h : 00",
                      showButton: true,
                    ),
                    HomeWorkItem(
                      day: "5",
                      month: "mar",
                      subject: "Droit",
                      weekDay: "Mercredi",
                      time: "08h : 00",
                    ),
                    HomeWorkItem(
                      day: "10",
                      month: "mar",
                      subject: "Economie",
                      weekDay: "Mercredi",
                      time: "08h : 00",
                    )
                  ],
                )

              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
