import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:foodie_app_client/foodie_app_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_firebase_flutter/serverpod_auth_firebase_flutter.dart';
import 'package:serverpod_auth_firebase_flutter/src/signin_button.dart';

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
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Serverpod Example'),
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
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: sessionManager.isSignedIn
            ? Text("User logged in")
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
