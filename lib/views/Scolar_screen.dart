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

    double hauteurEcran = MediaQuery.of(context).size.height;
    double largeurEcran = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.blue800,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "Information sur le participant",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.3), // Couleur de l'ombre
                        blurRadius: 10, // Rayon de flou de l'ombre
                        offset: const Offset(0,
                            5), // Position de l'ombre (0 = pas de décalage horizontal, 5 = décalage vertical)
                        spreadRadius: 1, // Étendue de l'ombre
                      ),
                    ],
                    gradient: AppColors.greenGradient,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: hauteurEcran,
                  height: (largeurEcran / 2),
                  child: SingleChildScrollView(
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
                                ),
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
                ),
                const SizedBox(
                  height: 8,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildCardRow("Entreprise :", "Societe Generale"),
                        _buildCardRow("Fonction :", "Gestionnaire de compte"),
                        _buildCardRow(
                            "Ancienneté dans la fonction :", "10 ans"),
                        _buildCardRow("Nombre d'employés :", "5"),
                        _buildCardRow(
                            "Nombre d'employés dans l'entreprise :", "34"),
                        _buildCardRow("Cellulaire :", "+225 22 89 65 45 23"),
                        _buildCardRow("Téléphone :", "+225 07 89 65 45 23"),
                        _buildCardRow("Email :", "kouassi@gmail.com"),
                      ],
                    ),
                  ),
                )
              ]),
        ));
  }
}

Widget _buildCardRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.gray500,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.gray800,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
