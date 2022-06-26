import 'package:developed_projects/src/pages/home/home_page.dart';
import 'package:developed_projects/src/pages/java/java_controller.dart';
import 'package:developed_projects/src/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Pagejava extends StatelessWidget {
  JavaController _con = new JavaController();
  //const Pagejava({Key? key}) : super(key: key);

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
                Color.fromARGB(255, 82, 104, 230),
                Color.fromARGB(255, 47, 29, 206)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _barraAppBar(context),
              const SizedBox(
                height: 30.0,
              ),
              _textTitulo(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToDartUrl();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/CRPFi1w.jpg')),
                  GestureDetector(
                      onTap: () {
                        _con.goToDartUrl1();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/CRPFi1w.jpg')),
                ],
              ),

              const SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToDartUrl2();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/CRPFi1w.jpg')),
                  GestureDetector(
                      onTap: () {
                        _con.goToDartUrl3();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/iGcMz5K.jpg')),
                ],
              ),
              const SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToDartUrl4();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/cdMYJ8X.jpg')),
                  GestureDetector(
                      onTap: () {
                        _con.goToDartUrl5();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/CvIviAA.jpg')),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => HomePage()),
              (route) => false);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

  Widget _textTitulo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Text("JAVA PROJECTS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ))
      ]),
    );
  }

  Widget _listProductos(BuildContext context, String image) {
    return Column(
      children: [
        Image.network(image, width: 150.0),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          'FLUTTER PROJECTS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}
