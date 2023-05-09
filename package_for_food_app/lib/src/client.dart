// class ServerPodClient {
//   ServerPodClient():;

// Client _client;

// }

import 'dart:io';

import 'package:foodie_app_client/foodie_app_client.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
// import 'package:s';

class ServerPodClientApp {
  ServerPodClientApp._() {
    client = Client(
        'http://${Platform.isAndroid ? "10.0.2.2" : "localhost"}:8080/',
        authenticationKeyManager: FlutterAuthenticationKeyManager())
      ..connectivityMonitor = FlutterConnectivityMonitor();

    sessionManager = sessionManager = SessionManager(
      caller: client.modules.auth,
    );
  }

  static late Client client;

  static late SessionManager sessionManager;

  static Future<bool> sessionInit() async {
    return await sessionManager.initialize();
  }
}
