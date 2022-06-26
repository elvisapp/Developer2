import 'package:developed_projects/src/pages/javascript/page_javascript.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// el habla del problema nulo minuto 14:22 despues de las definicion de las clases

class JavascriptController {
  BuildContext? context; //variable
  // ignore: body_might_complete_normally_nullable
  Future? init(BuildContext contex) {
    //metodo
    // ignore: unnecessary_this
    this.context = contex;
  }

//Metodo para pasar de pagina agregando gestoDetec y luego onTap

  Future<void> goToDartUrl() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
  }

  Future<void> goToDartUrl1() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
  }

  Future<void> goToDartUrl2() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
  }

  Future<void> goToDartUrl3() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
  }

  Future<void> goToDartUrl4() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
  }

  Future<void> goToDartUrl5() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
  }

  Future<void> goToDartUrl6() async {
    await launch("https://elvis-com-original.web.app/", forceWebView: true);
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
