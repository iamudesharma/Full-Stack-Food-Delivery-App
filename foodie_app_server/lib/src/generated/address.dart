/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Address extends _i1.TableRow {
  Address({
    int? id,
    required this.city,
    required this.pin,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.landmark,
  }) : super(id);

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

  static final t = AddressTable();

  String city;

  int pin;

  double latitude;

  double longitude;

  String address;

  String landmark;

  @override
  String get tableName => 'addresses';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'city':
        city = value;
        return;
      case 'pin':
        pin = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'address':
        address = value;
        return;
      case 'landmark':
        landmark = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Address>> find(
    _i1.Session session, {
    AddressExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Address?> findSingleRow(
    _i1.Session session, {
    AddressExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Address>(
      where: where != null ? where(Address.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Address?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Address>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AddressExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AddressExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AddressExpressionBuilder = _i1.Expression Function(AddressTable);

class AddressTable extends _i1.Table {
  AddressTable() : super(tableName: 'addresses');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final city = _i1.ColumnString('city');

  final pin = _i1.ColumnInt('pin');

  final latitude = _i1.ColumnDouble('latitude');

  final longitude = _i1.ColumnDouble('longitude');

  final address = _i1.ColumnString('address');

  final landmark = _i1.ColumnString('landmark');

  @override
  List<_i1.Column> get columns => [
        id,
        city,
        pin,
        latitude,
        longitude,
        address,
        landmark,
      ];
}

@Deprecated('Use AddressTable.t instead.')
AddressTable tAddress = AddressTable();
