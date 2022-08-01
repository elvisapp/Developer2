import 'package:developed_projects/src/pages/login/signUp_page.dart';
import 'package:developed_projects/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevelopedProjects());
}

class DevelopedProjects extends StatelessWidget {
  DevelopedProjects({Key? key}) : super(key: key);
  Color _primaryColor = HexColor('#3d85c6');
  Color _accentColor = HexColor('#0b5394');

  Widget currentPage = SignUpPage();
  //AuthClass authClass = AuthClass();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developed Projects',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Color.fromARGB(255, 19, 29, 61),
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(title: 'Developed Projects'),
    );
  }
}
