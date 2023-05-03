import 'package:foodie_app_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UsersEndpoint extends Endpoint {
  Future<bool> checkUserExists(
    Session session,
  ) async {
    final id = await session.auth.authenticatedUserId;

    final user = await User.findById(session, id!);

    if (user != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> createUser(Session session, User user) async {
    await User.insert(session, user);
  }

  Future<bool> deleteUsers(Session session, User user) async {
    final result = await User.deleteRow(session, user);

    return result;
  }

  Future<User?> getUser(Session session) async {
    final id = await session.auth.authenticatedUserId;

    var cacheKey = 'UserData-$id';

    // Try to retrieve the object from the cache
    var userData = await session.caches.local.get<User>(cacheKey);

    // If the object wasn't found in the cache, load it from the database and
    // save it in the cache. Make it valid for 5 minutes.
    if (userData == null) {
      userData = await User.findById(session, id!);
      await session.caches.local
          .put(cacheKey, userData!, lifetime: Duration(minutes: 15));
    }
    return userData;
  }
}
