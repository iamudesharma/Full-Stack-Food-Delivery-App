import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:foodie_app_flutter/page/home_page.dart';
import 'package:serverpod_auth_firebase_flutter/serverpod_auth_firebase_flutter.dart';

import '../main.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    signInWithFirebase(
      context: context,
      caller: client.modules.auth,
      authProviders: [EmailAuthProvider(), PhoneAuthProvider()],
    ).then((value) {
      // If the user signed in, go to the home page
      if (value != null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold();
  }
}
