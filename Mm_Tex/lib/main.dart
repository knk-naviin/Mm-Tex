import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mm_tex/LoginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
