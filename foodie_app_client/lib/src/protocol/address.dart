/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Address extends _i1.SerializableEntity {
  Address({
    this.id,
    required this.city,
    required this.pin,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.landmark,
  });

  factory Address.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Address(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      city: serializationManager.deserialize<String>(jsonSerialization['city']),
      pin: serializationManager.deserialize<int>(jsonSerialization['pin']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
      landmark: serializationManager
          .deserialize<String>(jsonSerialization['landmark']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String city;

  int pin;

  double latitude;

  double longitude;

  String address;

  String landmark;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'city': city,
      'pin': pin,
      'latitude': latitude,
      'longitude': longitude,
      'address': address,
      'landmark': landmark,
    };
  }
}
