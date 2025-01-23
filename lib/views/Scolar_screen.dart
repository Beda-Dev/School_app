import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'package:barcode/barcode.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScolarScreen extends StatefulWidget {
  const ScolarScreen({super.key});

  @override
  State<ScolarScreen> createState() => _ScolarScreenState();
}

class _ScolarScreenState extends State<ScolarScreen> {
  @override
  Widget build(BuildContext context) {
    final barcode = Barcode.qrCode();
    final svg = barcode.toSvg(
      "Kouassi Alexandre 1098765432456 ",
      width: 200,
      height: 200,
    );

    double hauteurEcran = MediaQuery
        .of(context)
        .size
        .height;
    double largeurEcran = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.blue800,
          centerTitle: true,
          title: const Text("Scolarité" , style: TextStyle(
            color: Colors.white
          ),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 12,top: 20

                    ),
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Couleur de l'ombre
                          blurRadius: 10, // Rayon de flou de l'ombre
                          offset: const Offset(0, 5), // Position de l'ombre (0 = pas de décalage horizontal, 5 = décalage vertical)
                          spreadRadius: 1, // Étendue de l'ombre
                        ),
                      ],
                      gradient: AppColors.greenGradient,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: hauteurEcran,
                    height: largeurEcran / 2,
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Republique de Cote d'Ivoire",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/mde1.png"),
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Image.asset(
                                        "assets/images/profile.png")),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Carte Etudiant",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Numero d'identification",
                                  style: TextStyle(fontSize: 9),
                                ),
                                Text(
                                  "59835637228352",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                                Text(
                                  "Nom",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  "Kouassi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                                Text(
                                  "Prenom",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  "Alexandre",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
                                Text(
                                  "Date d'inscription",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  "12/01/2025",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: <Widget>[
                                Image.asset("assets/images/CI.jpg"),
                                const SizedBox(
                                  height: 20,
                                )
                                ,
                                SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: SvgPicture.string(
                                      svg,
                                      fit: BoxFit.contain,
                                    )),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  const Text("Tableau des Modalités de Paiement" , style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(
                      height: 8,
                  ),
                  Table(
                    border: TableBorder.all(
                      color: Colors.black, // Couleur des bordures du tableau
                      width: 2, // Largeur des bordures
                    ),
                    children: const [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Mode de Paiement",
                                style: TextStyle(fontWeight: FontWeight.bold , fontSize: 11)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Montant", style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Date", style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Virement Bancaire" , style: TextStyle(
                                fontSize: 11
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("5 000 000 FCFA" , style: TextStyle(
                                fontSize: 11
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("31/03/2024"),
                          ),
                        ]
                      ),
                      TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Virement Bancaire" , style: TextStyle(
                                fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1 000 000 FCFA" ,  style: TextStyle(
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("12/01/2025"),
                            ),
                          ]
                      )

                    ],
                  )
                ]
            ),
          ),
        )
    );
  }
}