import 'package:flutter/material.dart';
// import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:foodie_app_flutter/main.dart';
import 'package:foodie_app_flutter/page/sign_in_page.dart';


import 'package:package_for_food_app/package_for_food_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    if (!sessionManager.isSignedIn) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const SignInPage()),
          (route) => false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(trailingActions: [
          PlatformIconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await sessionManager.signOut();

              await Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                  (route) => false);
            },
          )
        ]),
        body: const Center(
          child: Text('Home Page'),
        ));
  }
}
