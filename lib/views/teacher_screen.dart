import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../utils/colors.dart';

class Teacher {
  final String name;
  final String specialty;
  final String photoUrl;

  Teacher({
    required this.name,
    required this.specialty,
    required this.photoUrl,
  });
}

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  final List<Teacher> teachers = [
    Teacher(
      name: 'Jean Kouadio',
      specialty: 'Mathématiques',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Marie Diomandé',
      specialty: 'Physique',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Albert N\'Goran',
      specialty: 'Physique',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Ada Koffi',
      specialty: 'Informatique',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Grace Yao',
      specialty: 'Informatique',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Isaac Dufour',
      specialty: 'Mathématiques',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    // Nouvelles spécialités ajoutées :
    Teacher(
      name: 'Paul Tano',
      specialty: 'Marketing Concurrentiel',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Sophie Zoro',
      specialty: 'Transformation Digitale',
      photoUrl: 'https://via.placeholder.com/150',
    ),
    Teacher(
      name: 'Jacques N’Guessan',
      specialty: 'Marketing Stratégique',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
    Teacher(
      name: 'Clara Fadiga',
      specialty: 'Négociation',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
    Teacher(
      name: 'Michel Koné',
      specialty: 'Comptabilité',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
    Teacher(
      name: 'Lucie Bamba',
      specialty: 'Transformation Digitale',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
    Teacher(
      name: 'Marc Yao',
      specialty: 'Leadership',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
    Teacher(
      name: 'Élise Kouakou',
      specialty: 'Économie',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
    Teacher(
      name: 'Antoine N’Dri',
      specialty: 'Entrepreneuriat',
      photoUrl:
          'https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des enseignants',
            style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.blue800,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GroupedListView<Teacher, String>(
          elements: teachers,
          groupBy: (teacher) => teacher.specialty,
          groupSeparatorBuilder: (String specialty) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              specialty,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          itemBuilder: (context, Teacher teacher) {
            return Card(
              elevation: 2,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(teacher.photoUrl),
                ),
                title: Text(
                  teacher.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  teacher.specialty,
                  style: const TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.info, color: Colors.blueAccent),
                  onPressed: () {
                    _showTeacherDetails(context, teacher);
                  },
                ),
              ),
            );
          },
          itemComparator: (a, b) => a.name.compareTo(b.name), // Trier par nom
          useStickyGroupSeparators: true, // Maintenir le groupe en haut
          floatingHeader: true,
        ),
      ),
    );
  }

  // Affiche les détails d'un enseignant dans un dialogue
  void _showTeacherDetails(BuildContext context, Teacher teacher) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(teacher.name),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(teacher.photoUrl),
                radius: 40,
              ),
              const SizedBox(height: 16),
              Text(
                'Spécialité : ${teacher.specialty}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Fermer'),
            ),
          ],
        );
      },
    );
  }
}
