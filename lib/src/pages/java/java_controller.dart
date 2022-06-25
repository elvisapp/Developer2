import 'package:developed_projects/src/pages/javascript/page_javascript.dart';
import 'package:flutter/material.dart';

// el habla del problema nulo minuto 14:22 despues de las definicion de las clases

class JavaController {
  BuildContext? context; //variable
  // ignore: body_might_complete_normally_nullable
  Future? init(BuildContext contex) {
    //metodo
    // ignore: unnecessary_this
    this.context = contex;
  }

//Metodo para pasar de pagina agregando gestoDetec y luego onTap

  void goToLoginPage() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage2() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage3() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage4() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage5() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage6() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage7() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage8() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage9() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }

  void goToLoginPage10() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }
}
