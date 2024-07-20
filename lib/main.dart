import 'package:flutter/material.dart';
import 'src/app.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (fn) => runApp(const MyApp()),
  );
}
