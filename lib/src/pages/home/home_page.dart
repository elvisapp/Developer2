import 'package:developed_projects/src/pages/dart/page_dart.dart';
import 'package:developed_projects/src/pages/java/page_java.dart';
import 'package:developed_projects/src/pages/javascript/page_javascript.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              _bannerApp(context),
              const SizedBox(
                height: 30.0,
              ),
              _textDescripcion(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              _primerasImagem(context, ''),
              const SizedBox(height: 30.0),
              _segundasImagem(context, ''),

              const SizedBox(height: 30.0),
              _TerceraImagem(context, ''),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              //_registroTiempoReal(),
            ],
          ),
        )),
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

  Widget _primerasImagem(BuildContext context, String image) {
    return ClipPath(
      // clipper: WaveClipperOne(),
      child: Container(
        //color: Colors.white,
        // height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          //esto es una lista recoradndo que abjo puedo cambiar a child para un solo elemento
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (builder) => const PageDart()),
                    (route) => false);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/date.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (builder) => const PageJava()),
                    (route) => false);
              },
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/img/java.png'),
                radius: 42,
                backgroundColor: Colors.grey[900],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const PageJavascrip()),
                    (route) => false);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/js.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _segundasImagem(BuildContext context, String image) {
    return ClipPath(
      // clipper: WaveClipperOne(),
      child: Container(
        //color: Colors.white,
        // height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          //esto es una lista recoradndo que abjo puedo cambiar a child para un solo elemento
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/fire.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/visual.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/astudio.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _TerceraImagem(BuildContext context, String image) {
    return ClipPath(
      // clipper: WaveClipperOne(),
      child: Container(
        //color: Colors.white,
        // height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          //esto es una lista recoradndo que abjo puedo cambiar a child para un solo elemento
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/logo_app.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/piloto.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/logo_app.png'),
                radius: 40,
                backgroundColor: Colors.grey[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
