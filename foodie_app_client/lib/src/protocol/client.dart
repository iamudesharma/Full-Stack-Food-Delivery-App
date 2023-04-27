/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;
import 'dart:io' as _i3;
import 'protocol.dart' as _i4;

class _EndpointUsers extends _i1.EndpointRef {
  _EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';
}

class _Modules {
  _Modules(Client client) {
    auth = _i2.Caller(client);
  }

  late final _i2.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i3.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i4.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    users = _EndpointUsers(this);
    modules = _Modules(this);
  }

  late final _EndpointUsers users;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'users': users};
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
