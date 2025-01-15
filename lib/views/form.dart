import 'package:flutter/material.dart';
import '../utils/colors.dart';
import './home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double hauteurEcran = MediaQuery.of(context).size.height;
    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.blue800,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: largeurEcran,
              height: (hauteurEcran / 3) + 50,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/images/dall1.png"),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Bonjour Etudiant",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Connecte toi pour continuer",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Enter phone/email",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Ce champ est requis';
                        } else if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$")
                            .hasMatch(value)) {
                          return 'Veuillez entrer un email valide';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Enter password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Le mot de passe est requis';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (mounted) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          };
                          if (_formKey.currentState!.validate()) {
                            // Process login
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue800,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: const Text(
                          "CONNEXION",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Mot de pass oublié"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 90),
                    TextButton(
                      onPressed: () {

                      },
                      child: const Text("Créer un compte ? s'inscrire"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
