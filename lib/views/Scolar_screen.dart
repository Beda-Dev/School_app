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
                  margin: const EdgeInsets.all(
                      16), // Marges plus larges pour un meilleur espacement
                  padding: const EdgeInsets.all(16), // Padding plus généreux
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.2), // Ombre plus subtile
                        blurRadius: 10, // Rayon de flou
                        offset: const Offset(0, 5), // Position de l'ombre
                        spreadRadius: 1, // Étendue de l'ombre
                      ),
                    ],
                    gradient: AppColors.greenGradient, // Dégradé de couleur
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)), // Bordure arrondie
                  ),
                  width: double.infinity, // Utilise toute la largeur disponible
                  height: MediaQuery.of(context).size.height /
                      2.5, // Ajuste la hauteur selon l'écran
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // En-tête
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "République de Côte d'Ivoire",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                            height:
                                12), // Un peu d'espacement entre le titre et les éléments suivants
                        Row(
                          children: [
                            // Colonne de gauche avec les images
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/mde1.png",
                                      height:
                                          60), // Taille d'image plus raisonnable
                                  const SizedBox(height: 8),
                                  Image.asset("assets/images/profile.png",
                                      height: 100), // Taille d'image ajustée
                                ],
                              ),
                            ),
                            const SizedBox(
                                width: 16), // Espacement entre les colonnes
                            // Colonne de droite avec les informations textuelles
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _IdentityText(
                                      label: "Numéro d'identification",
                                      value: "59835637228352"),
                                  _IdentityText(label: "Nom", value: "Kouassi"),
                                  _IdentityText(
                                      label: "Prénom", value: "Alexandre"),
                                  _IdentityText(
                                      label: "Date d'inscription",
                                      value: "12/01/2025"),
                                ],
                              ),
                            ),
                            const SizedBox(
                                width: 16), // Espacement entre les colonnes
                            // Colonne de droite avec l'image du pays et un autre logo
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/CI.jpg",
                                      height: 60), // Taille d'image ajustée
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: SvgPicture.string(
                                      svg,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
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
                        _buildCardRow("Nombre d'employés a charge :", "5"),
                        _buildCardRow("Effectif de l'entreprise :", "34"),
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

class _IdentityText extends StatelessWidget {
  final String label;
  final String value;

  const _IdentityText({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8), // Espacement entre les lignes
      ],
    );
  }
}
