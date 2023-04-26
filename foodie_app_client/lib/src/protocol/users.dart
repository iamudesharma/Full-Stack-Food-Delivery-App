/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;
import 'protocol.dart' as _i3;

class User extends _i1.SerializableEntity {
  User({
    this.id,
    required this.name,
    required this.phone,
    required this.userInfo,
    this.address,
  });

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      phone: serializationManager.deserialize<int>(jsonSerialization['phone']),
      userInfo: serializationManager
          .deserialize<_i2.UserInfo>(jsonSerialization['userInfo']),
      address: serializationManager
          .deserialize<List<_i3.Address>?>(jsonSerialization['address']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int phone;

  _i2.UserInfo userInfo;

  List<_i3.Address>? address;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'userInfo': userInfo,
      'address': address,
    };
  }
}
