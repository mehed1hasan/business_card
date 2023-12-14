import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class ScanController extends GetxController {
  //TODO: Implement ScanController
  final qrCode = "".obs;

  Future<void> scanCode() async {
    String barCodeScan;
    try {
      barCodeScan = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      if (kDebugMode) {
        print("Code Data:$barCodeScan");
      }
    } on PlatformException {
      barCodeScan = 'Failed to Scan QR Code Data.';
    }
    qrCode.value = barCodeScan;
  }
}
