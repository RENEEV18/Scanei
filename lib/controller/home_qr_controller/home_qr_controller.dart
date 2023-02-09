import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomeController extends ChangeNotifier {
  int currentIndex = 0;

  void onChangeBottom(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Future<void> scanQrCode(qrScan) async {
    final String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#000000", "Cancel", true, ScanMode.QR);
    qrScan = barcodeScanRes;
    notifyListeners();
  }
}
