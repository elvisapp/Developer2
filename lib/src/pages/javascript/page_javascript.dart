import 'package:developed_projects/src/pages/home/home_page.dart';
import 'package:developed_projects/src/pages/javascript/javascript_controller.dart';
import 'package:developed_projects/src/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageJavascrip extends StatelessWidget {
  JavascriptController _con = JavascriptController();
  //const PageDart({Key? key}) : super(key: key);

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
                        _con.goToLoginPage();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/CRPFi1w.jpg')),
                  GestureDetector(
                      onTap: () {
                        _con.goToLoginPage2();
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
                        _con.goToLoginPage();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/nYdGEvq.jpg')),
                  GestureDetector(
                      onTap: () {
                        _con.goToLoginPage2();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/O8TP608.jpg')),
                ],
              ),
              const SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _con.goToLoginPage();
                      },
                      child: _listProductos(
                          context, 'https://i.imgur.com/cdMYJ8X.jpg')),
                  GestureDetector(
                      onTap: () {
                        _con.goToLoginPage2();
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
              MaterialPageRoute(builder: (builder) => const HomePage()),
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
        Text("JAVASCRIPT PROJECTS",
            style: TextStyle(
              color: Color.fromARGB(255, 151, 122, 35),
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
            color: Colors.amber,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}

  
 
  
  /*

  Widget _prueba() {
    return Container(
        child: GestureDetector(
          onTap: () {},
          child: Image.network(
              'https://scontent.fgru4-1.fna.fbcdn.net/v/t39.30808-6/245355336_2036619606506228_2053223498404297155_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHBVEqxmzQc916q5BfHLWGPcuOp56P1Sety46nno_VJ66oVYURD6_axVlm_RCf6Z0d9aUhWQrkfoBqXFGHeqlLO&_nc_ohc=OArD9x-CPhMAX9uS2bi&_nc_ht=scontent.fgru4-1.fna&oh=00_AT8Wb62A7-CYRIXlG6wgvfnbp71VjP53ufgLSSSvdbDqgQ&oe=62BAD59E'),
        ),
        padding: EdgeInsets.symmetric(vertical: 28, horizontal: 40),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(color: Colors.black26, width: 6),
            borderRadius: BorderRadius.circular(20))



          
            );
  }


  
// IconButton(
//           icon: const Icon(Icons.logout),
//           onPressed: () async {
//             await authClass.logout();
//             Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (builder) => const SignUpPage()),
//                 (route) => false);
//           })*/
