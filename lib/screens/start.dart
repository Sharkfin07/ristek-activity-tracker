import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 140),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // * RISTEK Logo
              Image.asset("assets/icons/ristek-logo-purple.png", width: 100),

              SizedBox(height: 30),

              // * Title
              Text(
                "RISTEK Quest",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),

              SizedBox(height: 10),

              // * Subtitle
              Text(
                "#BeyondBoundaries",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),

              SizedBox(height: 50),

              // * Next Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => handleNext(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleNext(BuildContext context) {
    Navigator.pushNamed(context, '/sign-in');
  }
}
