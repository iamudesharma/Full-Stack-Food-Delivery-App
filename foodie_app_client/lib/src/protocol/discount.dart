/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Discount extends _i1.SerializableEntity {
  Discount({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.startTime,
    required this.endTime,
    required this.minPurchase,
    required this.maxDiscount,
    required this.discount,
    required this.discountType,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Discount.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Discount(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      startDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['startDate']),
      endDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['endDate']),
      startTime: serializationManager
          .deserialize<DateTime>(jsonSerialization['startTime']),
      endTime: serializationManager
          .deserialize<DateTime>(jsonSerialization['endTime']),
      minPurchase: serializationManager
          .deserialize<double>(jsonSerialization['minPurchase']),
      maxDiscount: serializationManager
          .deserialize<double>(jsonSerialization['maxDiscount']),
      discount: serializationManager
          .deserialize<double>(jsonSerialization['discount']),
      discountType: serializationManager
          .deserialize<String>(jsonSerialization['discountType']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime startDate;

  DateTime endDate;

  DateTime startTime;

  DateTime endTime;

  double minPurchase;

  double maxDiscount;

  double discount;

  String discountType;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate,
      'endDate': endDate,
      'startTime': startTime,
      'endTime': endTime,
      'minPurchase': minPurchase,
      'maxDiscount': maxDiscount,
      'discount': discount,
      'discountType': discountType,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
