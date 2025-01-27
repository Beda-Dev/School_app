

class Student {
  final String nom;
  final String prenom;
  final String classe;
  final DateTime dateNaissance; 
  final DateTime dateInscription; 
  final String anneeAcademique;
  final String cycleEtude;
  final String email;
  final String motDePasse;
  final String matricule;


  const Student({
    required this.nom,
    required this.prenom,
    required this.classe,
    required this.dateNaissance,
    required this.dateInscription,
    required this.anneeAcademique,
    required this.cycleEtude,
    required this.email,
    required this.motDePasse,
    required this.matricule,
  });

  
  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'prenom': prenom,
      'classe': classe,
      'date_naissance': dateNaissance, 
      'date_inscription': dateInscription, 
      'annee_academique': anneeAcademique,
      'cycle_etude': cycleEtude,
      'email': email,
      'mot_de_passe': motDePasse,
      'matricule': matricule,
    };
  }

 
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      nom: json['nom'],
      prenom: json['prenom'],
      classe: json['classe'],
      dateNaissance: json['date_naissance'],
      dateInscription: json['date_inscription'],
      anneeAcademique: json['annee_academique'],
      cycleEtude: json['cycle_etude'],
      email: json['email'],
      motDePasse: json['mot_de_passe'],
      matricule: json['matricule'],
    );
  }
}
