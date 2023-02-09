import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_scanner/view/home_qr_screen/home_qr_screen.dart';

class SplashController extends ChangeNotifier {
  void timerSplash(context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const HomeQrScreen();
            },
          ),
        );
      },
    );
    notifyListeners();
  }
}
