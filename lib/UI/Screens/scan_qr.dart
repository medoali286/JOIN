import 'package:flutter/material.dart';
import 'package:join/constans.dart';
import 'package:qr_flutter/qr_flutter.dart';



class ScanQR extends StatelessWidget {
  static String id="ScanQr";



  const ScanQR({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: QrImage(
          size: 250,
           data: "https://drive.google.com/file/d/1Udpv3fsW5nbY0KltZLknIu-pxqFbpked/view?usp=sharing",
          foregroundColor: KGreenColor,

        ),
      ),

    );
  }
}
