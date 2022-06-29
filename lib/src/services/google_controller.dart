/*import 'dart:developer' as developer;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'dart:math';

/*
class GoogleController {
  //GoogleController({Key? key}) : super(key: key);
  static const String TAG = "GoogleController";
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  // Metodo
  Future<User?> signInWithGoogle() async {
    developer.log(TAG + ", signInWithGoogle() init.... ");

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    //concadenar vaiable
    developer.log(TAG +
        ", signInWithGoogle() googleUser email -> ${googleSignInAccount?.email} ");
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken);
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    User? user = userCredential.user;
    return _isCurrentSignIn(user!);
  }

  Future<User?> _isCurrentSignIn(User user) async {
    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);
      final User? currentUser = _auth.currentUser;
      assert(user.uid == currentUser?.uid);
      developer.log(TAG + ', signInWithGoogle succeeded: $user');

      return user;
    }
    return null;
  }
}*/

class GoogleController {
  BuildContext? context;

  var clientId;

  var clientSecret; //variable
  // ignore: body_might_complete_normally_nullable
  Future? init(BuildContext contex) {
    //metodo
    // ignore: unnecessary_this
    this.context = contex;
  }

//Metodo para pasar de pagina agregando gestoDetec y luego onTap

  Future<UserCredential> loginGoogle(BuildContext context) async {
    print('Registro exitos');
    final snackbar = SnackBar(content: Text("E-mail in used"));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}*/
