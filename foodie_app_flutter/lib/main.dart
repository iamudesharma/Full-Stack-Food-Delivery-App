import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:foodie_app_client/foodie_app_client.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app_flutter/page/home_page.dart';
import 'package:serverpod_auth_firebase_flutter/serverpod_auth_firebase_flutter.dart';


import 'package:package_for_food_app/package_for_food_app.dart';

import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

var client = Client('http://10.0.2.2:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager())
  ..connectivityMonitor = FlutterConnectivityMonitor();

late SessionManager sessionManager;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );

  await Firebase.initializeApp();
  await sessionManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'Foodie App',
      material: (context, platform) => MaterialAppData(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
      cupertino: (context, platform) => CupertinoAppData(
        theme: const CupertinoThemeData(
          primaryColor: Colors.blue,
        ),
      ),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: sessionManager.isSignedIn
            ? const Text("User logged in")
            : Column(
                children: [
                  SignInWithFirebaseButton(
                    caller: client.modules.auth,
                    onSignedIn: () {
                      print('Signed in!');
                    },
                    authProviders: [EmailAuthProvider(), PhoneAuthProvider()],
                  )
                ],
              ),
      ),
    );
  }
}
