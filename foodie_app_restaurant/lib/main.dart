import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:flutter/material.dart';
// import 'package:foodie_app_flutter/page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serverpod_auth_firebase_flutter/serverpod_auth_firebase_flutter.dart';

import 'package:package_for_food_app/package_for_food_app.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await ServerPodClientApp.sessionInit();

  configLoading();

  runApp(const MyApp());
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      builder: EasyLoading.init(),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'Foodie App',
      material: (context, platform) => MaterialAppData(
        theme: ThemeData(
            primaryColor: primaryColor,
            primarySwatch: primaryColor,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
            scaffoldBackgroundColor: const Color(0xffEDEDED),
            brightness: Brightness.light),
      ),
      cupertino: (context, platform) => CupertinoAppData(
        theme: const CupertinoThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Color(0xffEDEDED),
          brightness: Brightness.light,
        ),
      ),
      home: const MyHomePage(title: "Home"),
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
          child: ServerPodClientApp.sessionManager.isSignedIn
              ? const Text("User logged in")
              : SignInPage()),
    );
  }
}

const primaryColor = MaterialColor(0xFFfa4a0c, {
  50: Color(0xfffee9e2),
  100: Color(0xfffec9b6),
  200: Color(0xfffda586),
  300: Color(0xfffc8055),
  400: Color(0xfffb6530),
  500: Color(0xfffa4a0c),
  600: Color(0xfff9430a),
  700: Color(0xfff93a08),
  800: Color(0xfff83206),
  900: Color(0xfff62203),
  // A100: '#ffffff',
  // A200: '#ffecea',
  // A400: '#ffbdb7',
  // A700: '#ffa69d',
});
