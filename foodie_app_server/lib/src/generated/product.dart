/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Product extends _i1.TableRow {
  Product({
    int? id,
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
  }) : super(id);

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

  static final t = ProductTable();

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
  String get tableName => 'products';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'email':
        email = value;
        return;
      case 'logo':
        logo = value;
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
      case 'minimumOrder':
        minimumOrder = value;
        return;
      case 'freeDelivery':
        freeDelivery = value;
        return;
      case 'coverPhoto':
        coverPhoto = value;
        return;
      case 'delivery':
        delivery = value;
        return;
      case 'takeAway':
        takeAway = value;
        return;
      case 'avgRating':
        avgRating = value;
        return;
      case 'ratingCount':
        ratingCount = value;
        return;
      case 'selfDeliverySystem':
        selfDeliverySystem = value;
        return;
      case 'deliveryCharge':
        deliveryCharge = value;
        return;
      case 'packagingCharge':
        packagingCharge = value;
        return;
      case 'open':
        open = value;
        return;
      case 'active':
        active = value;
        return;
      case 'deliveryTime':
        deliveryTime = value;
        return;
      case 'veg':
        veg = value;
        return;
      case 'nonVeg':
        nonVeg = value;
        return;
      case 'discount':
        discount = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Product>> find(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findSingleRow(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Product>(
      where: where != null ? where(Product.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Product>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ProductExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ProductExpressionBuilder = _i1.Expression Function(ProductTable);

class ProductTable extends _i1.Table {
  ProductTable() : super(tableName: 'products');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final phone = _i1.ColumnString('phone');

  final email = _i1.ColumnString('email');

  final logo = _i1.ColumnString('logo');

  final latitude = _i1.ColumnDouble('latitude');

  final longitude = _i1.ColumnDouble('longitude');

  final address = _i1.ColumnSerializable('address');

  final minimumOrder = _i1.ColumnDouble('minimumOrder');

  final freeDelivery = _i1.ColumnDouble('freeDelivery');

  final coverPhoto = _i1.ColumnString('coverPhoto');

  final delivery = _i1.ColumnBool('delivery');

  final takeAway = _i1.ColumnBool('takeAway');

  final avgRating = _i1.ColumnDouble('avgRating');

  final ratingCount = _i1.ColumnDouble('ratingCount');

  final selfDeliverySystem = _i1.ColumnBool('selfDeliverySystem');

  final deliveryCharge = _i1.ColumnDouble('deliveryCharge');

  final packagingCharge = _i1.ColumnDouble('packagingCharge');

  final open = _i1.ColumnInt('open');

  final active = _i1.ColumnBool('active');

  final deliveryTime = _i1.ColumnString('deliveryTime');

  final veg = _i1.ColumnInt('veg');

  final nonVeg = _i1.ColumnInt('nonVeg');

  final discount = _i1.ColumnSerializable('discount');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        phone,
        email,
        logo,
        latitude,
        longitude,
        address,
        minimumOrder,
        freeDelivery,
        coverPhoto,
        delivery,
        takeAway,
        avgRating,
        ratingCount,
        selfDeliverySystem,
        deliveryCharge,
        packagingCharge,
        open,
        active,
        deliveryTime,
        veg,
        nonVeg,
        discount,
      ];
}

@Deprecated('Use ProductTable.t instead.')
ProductTable tProduct = ProductTable();
