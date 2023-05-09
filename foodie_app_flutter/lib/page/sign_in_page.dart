// import 'dart:async';

// import 'package:firebase_ui_auth/firebase_ui_auth.dart';
// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
// import 'package:foodie_app_flutter/page/user_setup.dart';
// // import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
// import 'package:package_for_food_app/package_for_food_app.dart';
// import 'package:serverpod_auth_client/module.dart';
// import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

// import 'package:foodie_app_flutter/page/home_page.dart';

// import '../main.dart';

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   var completer = Completer<UserInfo?>();

//   // @override
//   // void initState() {
//   //   signInWithFirebase(
//   //     context: context,
//   //     caller: client.modules.auth,
//   //     authProviders: [EmailAuthProvider(), PhoneAuthProvider()],
//   //   ).then((value) {
//   //     // If the user signed in, go to the home page
//   //     if (value != null) {

//   //     }
//   //   });
//   // super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return PlatformScaffold(
//       body: SignInScreen(
//         providers: [EmailAuthProvider(), PhoneAuthProvider()],
//         actions: [
//           AuthStateChangeAction<SignedIn>((context, state) async {
//             if (state.user == null) {
//               completer.complete(null);
//             } else {
//               var user = state.user!;

//               try {
//                 var idToken = await user.getIdToken();
//                 var serverResponse =
//                     await client.modules.auth.firebase.authenticate(idToken);

//                 if (!serverResponse.success &&
//                     serverResponse.userInfo != null) {
//                   // Failed to sign in.
//                   completer.complete(null);
//                   return;
//                 }

//                 // Store the user info in the session manager.
//                 var sessionManager = await SessionManager.instance;
//                 await sessionManager.registerSignedInUser(
//                   serverResponse.userInfo!,
//                   serverResponse.keyId!,
//                   serverResponse.key!,
//                 );

//                 completer.complete(serverResponse.userInfo);

//                 if (await client.users.checkUserExists()) {
//                   // ignore: use_build_context_synchronously
//                   Navigator.of(context).pushAndRemoveUntil(
//                       MaterialPageRoute(
//                         builder: (context) => const UserSetupPage(),
//                       ),
//                       (route) => false);
//                 } else {
//                   // ignore: use_build_context_synchronously
//                   Navigator.of(context).pushAndRemoveUntil(
//                       MaterialPageRoute(
//                         builder: (context) => const HomePage(),
//                       ),
//                       (route) => false);
//                 }
//                 // // ignore: use_build_context_synchronously

//                 return;
//               } catch (e) {
//                 completer.complete(null);
//                 return;
//               }
//             }
//           })
//         ],
//       ),
//     );
//   }
// }
