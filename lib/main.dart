import 'package:developed_projects/src/pages/login/signUp_page.dart';
import 'package:developed_projects/src/services/auth_service.dart';
import 'package:developed_projects/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DevelopedProjects());
}

class DevelopedProjects extends StatelessWidget {
  DevelopedProjects({Key? key}) : super(key: key);
  Color _primaryColor = HexColor('#3d85c6');
  Color _accentColor = HexColor('#0b5394');

  Widget currentPage = const SignUpPage();
  AuthClass authClass = AuthClass();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developed Projects',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(title: 'Developed Projects'),
    );
  }
}
