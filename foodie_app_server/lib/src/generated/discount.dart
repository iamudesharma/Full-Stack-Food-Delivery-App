/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Discount extends _i1.TableRow {
  Discount({
    int? id,
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
  }) : super(id);

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

  static final t = DiscountTable();

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
  String get tableName => 'discount';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'startDate':
        startDate = value;
        return;
      case 'endDate':
        endDate = value;
        return;
      case 'startTime':
        startTime = value;
        return;
      case 'endTime':
        endTime = value;
        return;
      case 'minPurchase':
        minPurchase = value;
        return;
      case 'maxDiscount':
        maxDiscount = value;
        return;
      case 'discount':
        discount = value;
        return;
      case 'discountType':
        discountType = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Discount>> find(
    _i1.Session session, {
    DiscountExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Discount>(
      where: where != null ? where(Discount.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Discount?> findSingleRow(
    _i1.Session session, {
    DiscountExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Discount>(
      where: where != null ? where(Discount.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Discount?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Discount>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DiscountExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Discount>(
      where: where(Discount.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Discount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Discount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Discount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DiscountExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Discount>(
      where: where != null ? where(Discount.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DiscountExpressionBuilder = _i1.Expression Function(DiscountTable);

class DiscountTable extends _i1.Table {
  DiscountTable() : super(tableName: 'discount');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final startDate = _i1.ColumnDateTime('startDate');

  final endDate = _i1.ColumnDateTime('endDate');

  final startTime = _i1.ColumnDateTime('startTime');

  final endTime = _i1.ColumnDateTime('endTime');

  final minPurchase = _i1.ColumnDouble('minPurchase');

  final maxDiscount = _i1.ColumnDouble('maxDiscount');

  final discount = _i1.ColumnDouble('discount');

  final discountType = _i1.ColumnString('discountType');

  final createdAt = _i1.ColumnDateTime('createdAt');

  final updatedAt = _i1.ColumnDateTime('updatedAt');

  @override
  List<_i1.Column> get columns => [
        id,
        startDate,
        endDate,
        startTime,
        endTime,
        minPurchase,
        maxDiscount,
        discount,
        discountType,
        createdAt,
        updatedAt,
      ];
}

@Deprecated('Use DiscountTable.t instead.')
DiscountTable tDiscount = DiscountTable();
