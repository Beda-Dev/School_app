import 'package:flutter/material.dart';
import '../utils/colors.dart'; // Remplace par le bon chemin vers ton fichier colors.dart

class CustomContainer extends StatelessWidget {
  final Widget icon;
  final String text;
  final String? subText;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  final Color? borderColor; // Propriété facultative pour la couleur de la bordure
  final double? borderWidth; // Propriété facultative pour la largeur de la bordure
  final Color? backgroundColor; // Propriété facultative pour la couleur du fond
  final double? borderRadius; // Propriété facultative pour arrondir les coins
  final double? width; // Propriété facultative pour la largeur
  final double? height; // Propriété facultative pour la hauteur
  final double? textSize;


  const CustomContainer({
    super.key,
    required this.icon,
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
    this.textSize = 16

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
          color: backgroundColor ?? AppColors.blue50, // Utilise la couleur de fond ou une couleur par défaut
          borderRadius: BorderRadius.circular(borderRadius ?? 10), // Utilise un rayon de bordure par défaut si non spécifié
          border: borderColor != null && borderWidth != null
              ? Border.all(color: borderColor!, width: borderWidth!) // Si la couleur et la largeur de la bordure sont spécifiées, applique-les
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            Text(
              text,
              style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
            ),
            if (subText != null) // Affiche le texte facultatif si spécifié
              Text(
                subText!,
                style: const TextStyle(
                  fontSize: 12, // Taille du texte sous le principal
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
