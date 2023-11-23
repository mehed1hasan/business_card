import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginView extends GetView<LoginController> {


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [
          'email'
        ]
    ).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser
        ?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }


  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('LoginView'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(user == null)...[
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.credential = signInWithGoogle() as RxString;
                    // Get.toNamed('/home');
                  },
                  child: const Icon(
                    Icons.login,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Google Sign In',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ] else
              ...[
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      //Get.toNamed('/home');
                    },
                    child: const Icon(
                      Icons.login,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Google Sign Out',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ]
          ],
        ),
      );
    });
  }
}
