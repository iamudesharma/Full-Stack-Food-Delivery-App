/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Product extends _i1.SerializableEntity {
  Product({
    this.id,
    required this.name,
    required this.phone,
    required this.email,
    this.logo,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.minimumOrder,
    required this.freeDelivery,
    this.coverPhoto,
    required this.delivery,
    required this.takeAway,
    required this.avgRating,
    required this.ratingCount,
    required this.selfDeliverySystem,
    required this.deliveryCharge,
    required this.packagingCharge,
    required this.open,
    required this.active,
    required this.deliveryTime,
    required this.veg,
    required this.nonVeg,
    required this.discount,
  });

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      phone:
          serializationManager.deserialize<String>(jsonSerialization['phone']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      logo:
          serializationManager.deserialize<String?>(jsonSerialization['logo']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      address: serializationManager
          .deserialize<_i2.Address>(jsonSerialization['address']),
      minimumOrder: serializationManager
          .deserialize<double>(jsonSerialization['minimumOrder']),
      freeDelivery: serializationManager
          .deserialize<double>(jsonSerialization['freeDelivery']),
      coverPhoto: serializationManager
          .deserialize<String?>(jsonSerialization['coverPhoto']),
      delivery:
          serializationManager.deserialize<bool>(jsonSerialization['delivery']),
      takeAway:
          serializationManager.deserialize<bool>(jsonSerialization['takeAway']),
      avgRating: serializationManager
          .deserialize<double>(jsonSerialization['avgRating']),
      ratingCount: serializationManager
          .deserialize<double>(jsonSerialization['ratingCount']),
      selfDeliverySystem: serializationManager
          .deserialize<bool>(jsonSerialization['selfDeliverySystem']),
      deliveryCharge: serializationManager
          .deserialize<double>(jsonSerialization['deliveryCharge']),
      packagingCharge: serializationManager
          .deserialize<double>(jsonSerialization['packagingCharge']),
      open: serializationManager.deserialize<int>(jsonSerialization['open']),
      active:
          serializationManager.deserialize<bool>(jsonSerialization['active']),
      deliveryTime: serializationManager
          .deserialize<String>(jsonSerialization['deliveryTime']),
      veg: serializationManager.deserialize<int>(jsonSerialization['veg']),
      nonVeg:
          serializationManager.deserialize<int>(jsonSerialization['nonVeg']),
      discount: serializationManager
          .deserialize<_i2.Discount>(jsonSerialization['discount']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String phone;

  String email;

  String? logo;

  double latitude;

  double longitude;

  _i2.Address address;

  double minimumOrder;

  double freeDelivery;

  String? coverPhoto;

  bool delivery;

  bool takeAway;

  double avgRating;

  double ratingCount;

  bool selfDeliverySystem;

  double deliveryCharge;

  double packagingCharge;

  int open;

  bool active;

  String deliveryTime;

  int veg;

  int nonVeg;

  _i2.Discount discount;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'logo': logo,
      'latitude': latitude,
      'longitude': longitude,
      'address': address,
      'minimumOrder': minimumOrder,
      'freeDelivery': freeDelivery,
      'coverPhoto': coverPhoto,
      'delivery': delivery,
      'takeAway': takeAway,
      'avgRating': avgRating,
      'ratingCount': ratingCount,
      'selfDeliverySystem': selfDeliverySystem,
      'deliveryCharge': deliveryCharge,
      'packagingCharge': packagingCharge,
      'open': open,
      'active': active,
      'deliveryTime': deliveryTime,
      'veg': veg,
      'nonVeg': nonVeg,
      'discount': discount,
    };
  }
}
