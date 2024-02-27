import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthManager extends ChangeNotifier {
  AuthManager._();
  static AuthManager instance = AuthManager._();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationId = "";

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (error) {},
      codeSent: (verificationId, forceResendingToken) {
        this.verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId = verificationId;
      },
    );
  }

  Future<bool> verifySms(String smsCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    try {
      await _auth.signInWithCredential(credential);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  String? get uid {
    return FirebaseAuth.instance.currentUser?.uid;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
