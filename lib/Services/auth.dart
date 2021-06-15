import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class Auth {
  final _auth = FirebaseAuth.instance;

  Future<UserCredential> signUp(
      {@required String email, @required String password}) async {
    final authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return authResult;
  }

  Future<UserCredential> signIn(
      {@required String email, @required String password}) async {
    final authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return authResult;
  }
}
