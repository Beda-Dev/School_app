import 'package:flutter/material.dart';
import '../utils/colors.dart'; // Remplace par le bon chemin vers ton fichier colors.dart

class CenteredTextContainer extends StatelessWidget {
  final String text;
  final String? subText; // Texte facultatif en dessous du texte principal
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  final Color? borderColor; // Propriété facultative pour la couleur de la bordure
  final double? borderWidth; // Propriété facultative pour la largeur de la bordure
  final Color? backgroundColor; // Propriété facultative pour la couleur du fond
  final double? borderRadius; // Propriété facultative pour arrondir les coins
  final double? width; // Propriété facultative pour la largeur
  final double? height; // Propriété facultative pour la hauteur
  final double? textSize; // Taille du texte principal

  const CenteredTextContainer({
    super.key,
    required this.text,
    required this.onTap,
    this.subText,
    this.margin,
    this.borderColor,
    this.borderWidth,
    this.backgroundColor,
    this.borderRadius,
    this.width = 150, // Valeur par défaut pour la largeur
    this.height = 125, // Valeur par défaut pour la hauteur
    this.textSize = 16, // Taille par défaut pour le texte principal
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin ?? const EdgeInsets.only(bottom: 16.0),
        padding: const EdgeInsets.all(10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.blue50, // Couleur de fond par défaut
          borderRadius: BorderRadius.circular(borderRadius ?? 10), // Bordure arrondie par défaut
          border: borderColor != null && borderWidth != null
              ? Border.all(color: borderColor!, width: borderWidth!) // Bordure facultative
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centre le contenu verticalement
          crossAxisAlignment: CrossAxisAlignment.center, // Centre le contenu horizontalement
          children: [
            Text(
              text,
              textAlign: TextAlign.center, // Centre le texte principal
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subText != null) // Affiche le texte secondaire si spécifié
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  subText!,
                  textAlign: TextAlign.center, // Centre le texte secondaire
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
