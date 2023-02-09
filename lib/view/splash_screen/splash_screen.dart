import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 60,
                child: CircleAvatar(
                  child: Stack(
                    children: const [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: CircleAvatar(
                          radius: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'SCANei',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.8,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
