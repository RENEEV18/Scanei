import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/controller/splash_screen_controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Provider.of<SplashController>(context, listen: false)
            .timerSplash(context);
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: CircleAvatar(
                      child: Stack(
                        children: const [
                          Positioned(
                            top: 4,
                            left: 0,
                            child: CircleAvatar(
                              radius: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
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
              LoadingAnimationWidget.fourRotatingDots(
                  color: Colors.white, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
