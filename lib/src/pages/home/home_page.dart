import 'package:developed_projects/src/pages/dart/page_dart.dart';
import 'package:developed_projects/src/pages/home/home_controller.dart';
import 'package:developed_projects/src/pages/login/signUp_page.dart';
import 'package:developed_projects/src/utilities/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomeController _con = HomeController();
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _con.init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Colors.black,
                Color.fromARGB(255, 25, 13, 138),
                Color.fromARGB(255, 47, 29, 206)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _barraAppBar(context),
              _bannerApp(context),
              const SizedBox(
                height: 30.0,
              ),
              _textDescripcion(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToDartPage();
                      },
                      child: _imageProjects(context, 'assets/img/date.png')),
                  GestureDetector(
                      onTap: () {
                        _con.goToJavaPage();
                      },
                      child: _imageProjects(context, 'assets/img/java.png')),
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/js.png')),
                ],
              ),
              const SizedBox(height: 30.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/fire.png')),
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/visual.png')),
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/astudio.png')),
                ],
              ),
              const SizedBox(height: 30.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/piloto.png')),
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/piloto.png')),
                  GestureDetector(
                      onTap: () {
                        _con.goToJavascriptPage();
                      },
                      child: _imageProjects(context, 'assets/img/piloto.png')),
                ],
              ),

              const SizedBox(height: 30.0),
              /////////
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              //_registroTiempoReal(),
            ],
          ),
        )),
      ),
    );
  }

  Widget _barraAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 19, 29, 61),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () async {
          await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => const SignUpPage()),
              (route) => false);
        },
      ),
    );
  }

  Widget _bannerApp(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperOne(),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Color(0x003d85c6),
              Color.fromARGB(255, 46, 101, 219),
              Color(0x000b5394),
            ]),
          ),
          height: MediaQuery.of(context).size.height * 0.30,
          //height: _headerHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/img/logo_app.png',
                width: 150,
                height: 100,
              ),
            ],
          ) //let's create a common header widget
          ),
    );
  }

  Widget _textDescripcion() {
    return const Text(
      "DEVELOPED PROJECTS",
      style: TextStyle(
        color: Color.fromARGB(255, 151, 122, 35),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _imageProjects(BuildContext context, String image) {
    return Column(
      children: [
        CircleAvatar(
          child: Image.asset(image),
          backgroundColor: Colors.grey[900],
          radius: 40,
        ),
      ],
    );
  }
}
