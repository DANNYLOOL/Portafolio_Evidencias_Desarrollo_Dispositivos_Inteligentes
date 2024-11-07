import 'package:arquitectura_limpia/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
}
