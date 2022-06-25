import 'package:developed_projects/src/pages/home/home_page.dart';
import 'package:developed_projects/src/pages/login/signin_page.dart';
import 'package:developed_projects/src/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget currentPage = const SignUpPage();

  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool circular = false;

  AuthClass authClass = AuthClass();

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
              _bannerApp(),
              const SizedBox(
                height: 30.0,
              ),
              _textDescripcion(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              _textFieldEmail(),
              const SizedBox(height: 30.0),
              _textFieldPassword(),
              const SizedBox(height: 15.0),
              controlButton("Sign Up"),
              const SizedBox(height: 45.0),
              _textOlvidasteContrasena(),
              const SizedBox(
                height: 25.0,
              ),
              _registroTiempoReal(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
            ],
          ),
        )),
      ),
    );
  }

  Widget _bannerApp() {
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
      "REGISTER",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _textFieldEmail() {
    return textItem("Email", _emailController, false);
    // ignore: dead_code
    const SizedBox(
      height: 15,
    );
  }

  Widget _textFieldPassword() {
    return textItem("Password", _passwordController, true);
    // ignore: dead_code
    const SizedBox(
      height: 15,
    );
  }

//Boton entrar
  Widget buttonItem(
      String imagePath, String buttonName, double size, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //width: MediaQuery.of(context).size.width - 250,
        height: 50,
        child: Card(
          elevation: 8,
          color: Color.fromARGB(255, 12, 53, 141),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                width: 1,
                color: Colors.grey,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                imagePath,
                height: size,
                width: size,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                buttonName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textOlvidasteContrasena() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "If you already have an Account ?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (builder) => const SignInPage()),
                (route) => false);
          },
          child: const Text(
            " Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget _registroTiempoReal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 180,
          padding: const EdgeInsets.all(10),
          child: buttonItem("assets/google.svg", "GOOGLE", 30, () async {
            await authClass.googleSignIn(context);
          }),
        ),
        Container(
          width: 180,
          padding: const EdgeInsets.all(10),
          child: buttonItem("assets/phone.svg", "PHONE", 30, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => const SignUpPage()));
          }),
        ),
      ],
    );
  }

// todos los parametros de los campos
  Widget textItem(
      String name, TextEditingController controller, bool obsecureText) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          labelText: name,
          labelStyle: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget controlButton(String name) {
    return InkWell(
      onTap: () async {
        setState(() {
          circular = true;
        });
        try {
          firebase_auth.UserCredential userCredential =
              await firebaseAuth.createUserWithEmailAndPassword(
                  email: _emailController.text,
                  password: _passwordController.text);
          print('Entro');
          print(userCredential.user?.email);
          setState(() {
            circular = false;
          });
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => HomePage()),
              (route) => false);
        } catch (e) {
          print('No entra');
          final snackbar = SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
          setState(() {
            circular = false;
          });
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 200,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color(0x3d85c6),
            Color.fromARGB(255, 46, 101, 219),
            Color(0x0b5394),
          ]),
        ),
        child: Center(
          child: circular
              ? const CircularProgressIndicator()
              : Text(name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
        ),
      ),
    );
  }
}
