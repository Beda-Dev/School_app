import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CertificatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Graduation", style: TextStyle(color: Colors.white)),
        backgroundColor:
            AppColors.blue800,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.greenAccent, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Text(
                "Certificat de Graduation",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 20),

              
              Text(
                "Mr Kouassi Alexandre",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),

              
              Text(
                "Poste : Gestionnaire de compte",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),

              
              Text(
                "Date : 12 Janvier 2025",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 30),

              
              Text(
                "Signature : Dr. Jean Kouadio",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),


            ],
          ),
        ),
      ),
    );
  }
}
