import 'package:flutter/material.dart';
import 'package:prueba_world/facebook_ui.dart/facebook.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => MyApp(),
    enabled: true,
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: FacebookUi(),
    );
  }
}
