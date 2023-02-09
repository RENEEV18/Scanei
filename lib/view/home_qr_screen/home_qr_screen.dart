import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/controller/home_qr_controller/home_qr_controller.dart';
import 'package:qr_scanner/widgets/common_text_widget.dart';

class HomeQrScreen extends StatelessWidget {
  const HomeQrScreen({super.key});
  final String result = "Hurry Up Scan now !";
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage(
                                'assets/images/emails-concept-illustration_114360-3925-removebg-preview.png'),
                            height: 60,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CommonStyle(
                                text: "Go pro",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: -0.8,
                              ),
                              CommonStyle(
                                text: "Batch Scan & Pin",
                                letterSpacing: -0.8,
                              ),
                              CommonStyle(
                                text: "Protect Constomer QR Code",
                                letterSpacing: -0.8,
                              ),
                              CommonStyle(
                                text: "No Ads",
                                letterSpacing: -0.8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Lottie.asset(
                      'assets/images/62699-qr-code-scanner.json',
                      height: 300,
                    ),
                    Text(
                      result,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        letterSpacing: -0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              data.scanQrCode(result);
            },
            child: const Icon(Icons.qr_code_scanner_outlined),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: data.currentIndex,
            onTap: (value) {
              data.onChangeBottom(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.qr_code_rounded,
                ),
                label: 'QR Maker',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
