import 'package:developed_projects/src/pages/dart/page_dart.dart';
import 'package:developed_projects/src/pages/java/page_java.dart';
import 'package:developed_projects/src/pages/javascript/page_javascript.dart';
import 'package:flutter/material.dart';

class HomeController {
  BuildContext? context; //variable
  // ignore: body_might_complete_normally_nullable
  Future? init(BuildContext contex) {
    //metodo
    // ignore: unnecessary_this
    this.context = contex;
  }

//Metodo para pasar de pagina agregando gestoDetec y luego onTap

  void goToDartPage() {
    Navigator.pushAndRemoveUntil(context!,
        MaterialPageRoute(builder: (builder) => PageDart()), (route) => false);
  }

  void goToJavaPage() {
    Navigator.pushAndRemoveUntil(context!,
        MaterialPageRoute(builder: (builder) => Pagejava()), (route) => false);
  }

  void goToJavascriptPage() {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (builder) => PageJavascrip()),
        (route) => false);
  }
}
