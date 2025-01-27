import '../models/course_model.dart';

// Liste des cours Marketing Concurrentiel
List<Course> marketingConcurrentiel = [
  Course(day: 1, month: 'Janvier', subject: 'Analyse du Marché', weekDay: 'Lundi', time: '09:00 - 11:00'),
  Course(day: 2, month: 'Janvier', subject: 'Comportement du Consommateur', weekDay: 'Mardi', time: '10:00 - 12:00'),
  Course(day: 3, month: 'Janvier', subject: 'Stratégies de Prix', weekDay: 'Mercredi', time: '14:00 - 16:00'),
  Course(day: 4, month: 'Janvier', subject: 'Segmentation du Marché', weekDay: 'Jeudi', time: '08:00 - 10:00'),
  Course(day: 5, month: 'Janvier', subject: 'Positionnement Stratégique', weekDay: 'Vendredi', time: '11:00 - 13:00'),
  Course(day: 1, month: 'Février', subject: 'Stratégies de Distribution', weekDay: 'Lundi', time: '13:00 - 15:00'),
  Course(day: 2, month: 'Février', subject: 'Politique de Communication', weekDay: 'Mardi', time: '09:00 - 11:00'),
  Course(day: 3, month: 'Février', subject: 'Marketing Digital', weekDay: 'Mercredi', time: '16:00 - 18:00'),
  Course(day: 4, month: 'Février', subject: 'Étude des Concurrents', weekDay: 'Jeudi', time: '12:00 - 14:00'),
  Course(day: 5, month: 'Février', subject: 'Marketing International', weekDay: 'Vendredi', time: '08:00 - 10:00'),
];

// Liste des cours Marketing Stratégique
List<Course> marketingStrategique = [
  Course(day: 1, month: 'Janvier', subject: 'Planification Stratégique', weekDay: 'Lundi', time: '10:00 - 12:00'),
  Course(day: 2, month: 'Janvier', subject: 'Analyse SWOT', weekDay: 'Mardi', time: '13:00 - 15:00'),
  Course(day: 3, month: 'Janvier', subject: 'Développement de Produit', weekDay: 'Mercredi', time: '08:00 - 10:00'),
  Course(day: 4, month: 'Janvier', subject: 'Stratégies de Croissance', weekDay: 'Jeudi', time: '11:00 - 13:00'),
  Course(day: 5, month: 'Janvier', subject: 'Fusion et Acquisitions', weekDay: 'Vendredi', time: '14:00 - 16:00'),
  Course(day: 1, month: 'Février', subject: 'Analyse de Marché Globale', weekDay: 'Lundi', time: '09:00 - 11:00'),
  Course(day: 2, month: 'Février', subject: 'Stratégies de Diversification', weekDay: 'Mardi', time: '16:00 - 18:00'),
  Course(day: 3, month: 'Février', subject: 'Gestion des Ressources', weekDay: 'Mercredi', time: '13:00 - 15:00'),
  Course(day: 4, month: 'Février', subject: 'Stratégies d’Innovation', weekDay: 'Jeudi', time: '09:00 - 11:00'),
  Course(day: 5, month: 'Février', subject: 'Marketing et RSE', weekDay: 'Vendredi', time: '12:00 - 14:00'),
];

// Liste des cours Négociation
List<Course> negotiation = [
  Course(day: 1, month: 'Janvier', subject: 'Techniques de Négociation', weekDay: 'Lundi', time: '08:00 - 10:00'),
  Course(day: 2, month: 'Janvier', subject: 'Négociation Internationale', weekDay: 'Mardi', time: '11:00 - 13:00'),
  Course(day: 3, month: 'Janvier', subject: 'Gestion des Conflits', weekDay: 'Mercredi', time: '14:00 - 16:00'),
  Course(day: 4, month: 'Janvier', subject: 'Psychologie de la Négociation', weekDay: 'Jeudi', time: '09:00 - 11:00'),
  Course(day: 5, month: 'Janvier', subject: 'Négociation Commerciale', weekDay: 'Vendredi', time: '10:00 - 12:00'),
  Course(day: 1, month: 'Février', subject: 'Communication Non Verbale', weekDay: 'Lundi', time: '13:00 - 15:00'),
  Course(day: 2, month: 'Février', subject: 'Négociation Multiculturelle', weekDay: 'Mardi', time: '15:00 - 17:00'),
  Course(day: 3, month: 'Février', subject: 'Négociation Stratégique', weekDay: 'Mercredi', time: '10:00 - 12:00'),
  Course(day: 4, month: 'Février', subject: 'Tactiques de Négociation', weekDay: 'Jeudi', time: '16:00 - 18:00'),
  Course(day: 5, month: 'Février', subject: 'Négociation Avancée', weekDay: 'Vendredi', time: '08:00 - 10:00'),
];

// Liste des cours Comptabilité
List<Course> comptabilite = [
  Course(day: 1, month: 'Janvier', subject: 'Comptabilité Financière', weekDay: 'Lundi', time: '14:00 - 16:00'),
  Course(day: 2, month: 'Janvier', subject: 'Comptabilité de Gestion', weekDay: 'Mardi', time: '13:00 - 15:00'),
  Course(day: 3, month: 'Janvier', subject: 'Comptabilité Analytique', weekDay: 'Mercredi', time: '08:00 - 10:00'),
  Course(day: 4, month: 'Janvier', subject: 'Audit Comptable', weekDay: 'Jeudi', time: '10:00 - 12:00'),
  Course(day: 5, month: 'Janvier', subject: 'Fiscalité des Entreprises', weekDay: 'Vendredi', time: '11:00 - 13:00'),
  Course(day: 1, month: 'Février', subject: 'Comptabilité des Sociétés', weekDay: 'Lundi', time: '10:00 - 12:00'),
  Course(day: 2, month: 'Février', subject: 'Contrôle de Gestion', weekDay: 'Mardi', time: '16:00 - 18:00'),
  Course(day: 3, month: 'Février', subject: 'Analyse des Coûts', weekDay: 'Mercredi', time: '14:00 - 16:00'),
  Course(day: 4, month: 'Février', subject: 'Comptabilité Internationale', weekDay: 'Jeudi', time: '09:00 - 11:00'),
  Course(day: 5, month: 'Février', subject: 'Gestion Budgétaire', weekDay: 'Vendredi', time: '13:00 - 15:00'),
];

// Liste des cours Ethique d'entreprise
List<Course> ethiqueEntreprise = [
  Course(day: 1, month: 'Janvier', subject: 'Éthique Professionnelle', weekDay: 'Lundi', time: '10:00 - 12:00'),
  Course(day: 2, month: 'Janvier', subject: 'Responsabilité Sociétale des Entreprises', weekDay: 'Mardi', time: '13:00 - 15:00'),
  Course(day: 3, month: 'Janvier', subject: 'Gestion Éthique des Affaires', weekDay: 'Mercredi', time: '09:00 - 11:00'),
  Course(day: 4, month: 'Janvier', subject: 'Normes Éthiques en Entreprise', weekDay: 'Jeudi', time: '14:00 - 16:00'),
  Course(day: 5, month: 'Janvier', subject: 'Éthique et Gouvernance', weekDay: 'Vendredi', time: '08:00 - 10:00'),
  Course(day: 1, month: 'Février', subject: 'Éthique et Droit des Affaires', weekDay: 'Lundi', time: '16:00 - 18:00'),
  Course(day: 2, month: 'Février', subject: 'Conflits d\'Intérêts en Entreprise', weekDay: 'Mardi', time: '11:00 - 13:00'),
  Course(day: 3, month: 'Février', subject: 'Responsabilité Éthique et Sociale', weekDay: 'Mercredi', time: '10:00 - 12:00'),
  Course(day: 4, month: 'Février', subject: 'Éthique du Leadership', weekDay: 'Jeudi', time: '08:00 - 10:00'),
  Course(day: 5, month: 'Février', subject: 'Développement Durable et Éthique', weekDay: 'Vendredi', time: '13:00 - 15:00'),
];

// Liste des cours Leadership
List<Course> leadership = [
  Course(day: 1, month: 'Janvier', subject: 'Leadership Transformationnel', weekDay: 'Lundi', time: '09:00 - 11:00'),
  Course(day: 2, month: 'Janvier', subject: 'Gestion d’Équipe', weekDay: 'Mardi', time: '14:00 - 16:00'),
  Course(day: 3, month: 'Janvier', subject: 'Prise de Décision Stratégique', weekDay: 'Mercredi', time: '10:00 - 12:00'),
  Course(day: 4, month: 'Janvier', subject: 'Communication Efficace', weekDay: 'Jeudi', time: '13:00 - 15:00'),
  Course(day: 5, month: 'Janvier', subject: 'Leadership en Période de Crise', weekDay: 'Vendredi', time: '08:00 - 10:00'),
  Course(day: 1, month: 'Février', subject: 'Développement du Leadership', weekDay: 'Lundi', time: '11:00 - 13:00'),
  Course(day: 2, month: 'Février', subject: 'Coaching et Mentorat', weekDay: 'Mardi', time: '16:00 - 18:00'),
  Course(day: 3, month: 'Février', subject: 'Leadership et Innovation', weekDay: 'Mercredi', time: '09:00 - 11:00'),
  Course(day: 4, month: 'Février', subject: 'Gestion des Conflits', weekDay: 'Jeudi', time: '12:00 - 14:00'),
  Course(day: 5, month: 'Février', subject: 'Leadership Collaboratif', weekDay: 'Vendredi', time: '10:00 - 12:00'),
];

// Liste des cours Économie
List<Course> economie = [
  Course(day: 1, month: 'Janvier', subject: 'Microéconomie', weekDay: 'Lundi', time: '08:00 - 10:00'),
  Course(day: 2, month: 'Janvier', subject: 'Macroeconomie', weekDay: 'Mardi', time: '10:00 - 12:00'),
  Course(day: 3, month: 'Janvier', subject: 'Économie Internationale', weekDay: 'Mercredi', time: '14:00 - 16:00'),
  Course(day: 4, month: 'Janvier', subject: 'Politiques Économiques', weekDay: 'Jeudi', time: '09:00 - 11:00'),
  Course(day: 5, month: 'Janvier', subject: 'Économie du Développement', weekDay: 'Vendredi', time: '13:00 - 15:00'),
  Course(day: 1, month: 'Février', subject: 'Économie Comportementale', weekDay: 'Lundi', time: '11:00 - 13:00'),
  Course(day: 2, month: 'Février', subject: 'Économie des Ressources', weekDay: 'Mardi', time: '14:00 - 16:00'),
  Course(day: 3, month: 'Février', subject: 'Théorie des Jeux', weekDay: 'Mercredi', time: '08:00 - 10:00'),
  Course(day: 4, month: 'Février', subject: 'Économie Numérique', weekDay: 'Jeudi', time: '10:00 - 12:00'),
  Course(day: 5, month: 'Février', subject: 'Analyse des Marchés', weekDay: 'Vendredi', time: '16:00 - 18:00'),
];

// Liste des cours Entrepreneuriat
List<Course> entrepreneuriat = [
  Course(day: 1, month: 'Janvier', subject: 'Création d’Entreprise', weekDay: 'Lundi', time: '10:00 - 12:00'),
  Course(day: 2, month: 'Janvier', subject: 'Modèle d’Affaires', weekDay: 'Mardi', time: '09:00 - 11:00'),
  Course(day: 3, month: 'Janvier', subject: 'Pitching et Levée de Fonds', weekDay: 'Mercredi', time: '14:00 - 16:00'),
  Course(day: 4, month: 'Janvier', subject: 'Gestion des Startups', weekDay: 'Jeudi', time: '13:00 - 15:00'),
  Course(day: 5, month: 'Janvier', subject: 'Innovation et Entrepreneuriat', weekDay: 'Vendredi', time: '08:00 - 10:00'),
  Course(day: 1, month: 'Février', subject: 'Plan d’Affaires', weekDay: 'Lundi', time: '11:00 - 13:00'),
  Course(day: 2, month: 'Février', subject: 'Gestion des Risques', weekDay: 'Mardi', time: '16:00 - 18:00'),
  Course(day: 3, month: 'Février', subject: 'Entrepreneuriat Social', weekDay: 'Mercredi', time: '09:00 - 11:00'),
  Course(day: 4, month: 'Février', subject: 'Entrepreneuriat Durable', weekDay: 'Jeudi', time: '08:00 - 10:00'),
  Course(day: 5, month: 'Février', subject: 'Marketing des Startups', weekDay: 'Vendredi', time: '12:00 - 14:00'),
];

// Liste des cours Travail et famille
List<Course> travailEtFamille = [
  Course(day: 1, month: 'Janvier', subject: 'Équilibre Travail-Famille', weekDay: 'Lundi', time: '09:00 - 11:00'),
  Course(day: 2, month: 'Janvier', subject: 'Gestion du Temps', weekDay: 'Mardi', time: '14:00 - 16:00'),
  Course(day: 3, month: 'Janvier', subject: 'Bien-être au Travail', weekDay: 'Mercredi', time: '10:00 - 12:00'),
  Course(day: 4, month: 'Janvier', subject: 'Parentalité et Carrière', weekDay: 'Jeudi', time: '13:00 - 15:00'),
  Course(day: 5, month: 'Janvier', subject: 'Relations Interpersonnelles', weekDay: 'Vendredi', time: '08:00 - 10:00'),
  Course(day: 1, month: 'Février', subject: 'Gestion du Stress', weekDay: 'Lundi', time: '11:00 - 13:00'),
  Course(day: 2, month: 'Février', subject: 'Communication Familiale', weekDay: 'Mardi', time: '16:00 - 18:00'),
  Course(day: 3, month: 'Février', subject: 'Flexibilité au Travail', weekDay: 'Mercredi', time: '09:00 - 11:00'),
  Course(day: 4, month: 'Février', subject: 'Travail à Distance', weekDay: 'Jeudi', time: '08:00 - 10:00'),
  Course(day: 5, month: 'Février', subject: 'Planification des Priorités', weekDay: 'Vendredi', time: '10:00 - 12:00'),
];

// Liste des cours Transformation Digitale
List<Course> transformationDigitale = [
  Course(day: 1, month: 'Janvier', subject: 'Introduction à la Transformation Digitale', weekDay: 'Lundi', time: '09:00 - 11:00'),
  Course(day: 2, month: 'Janvier', subject: 'Technologies Disruptives', weekDay: 'Mardi', time: '10:00 - 12:00'),
  Course(day: 3, month: 'Janvier', subject: 'Digitalisation des Processus', weekDay: 'Mercredi', time: '13:00 - 15:00'),
  Course(day: 4, month: 'Janvier', subject: 'Culture Numérique en Entreprise', weekDay: 'Jeudi', time: '14:00 - 16:00'),
  Course(day: 5, month: 'Janvier', subject: 'Gestion des Données', weekDay: 'Vendredi', time: '11:00 - 13:00'),
  Course(day: 1, month: 'Février', subject: 'Cloud Computing et Virtualisation', weekDay: 'Lundi', time: '10:00 - 12:00'),
  Course(day: 2, month: 'Février', subject: 'Big Data et Analyse Prédictive', weekDay: 'Mardi', time: '14:00 - 16:00'),
  Course(day: 3, month: 'Février', subject: 'Sécurité et Protection des Données', weekDay: 'Mercredi', time: '08:00 - 10:00'),
  Course(day: 4, month: 'Février', subject: 'Stratégies Digitales', weekDay: 'Jeudi', time: '09:00 - 11:00'),
  Course(day: 5, month: 'Février', subject: 'Impact du Digital sur les Modèles Économiques', weekDay: 'Vendredi', time: '15:00 - 17:00'),
];


