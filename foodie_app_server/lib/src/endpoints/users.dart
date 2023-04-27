import 'package:foodie_app_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UsersEndpoint extends Endpoint {

  
  Future<bool> checkUserExists(Session session,) async {
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
}
