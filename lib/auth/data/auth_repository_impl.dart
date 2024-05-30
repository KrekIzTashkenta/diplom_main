

import 'package:diplom_main/Auth/domain/auth_repository.dart';
import 'package:diplom_main/Auth/domain/entities/user_entity/user_entity.dart';
import 'package:diplom_main/auth/domain/auth_api.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi api;

  AuthRepositoryImpl(this.api);

  @override
  Future<UserEntity> getProfile() async {
    try {
    
      return const UserEntity(
        displayName: '',
        email: '',
        emailVerified: false,
        isAnonymous: false,
        phoneNumber: '',
        photoURL: '',
        refreshToken: '',
        tenantId: '',
        uid: '',
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> passwordUpdate({
    required String password,
  }) async {
    try {
      await api.passwordUpdate(password: password);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn({
    required String password,
    required String email,
  }) async {
    try {
      final response = await api.signIn(password: password, email: email);

      return response;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signUp({
    required String password,
    required String email,
  }) async {
    try {
      final response = await api.signUp(password: password, email: email);

      return response;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> userUpdate({
    String? email,
    String? username,
  }) async {
    try {
      await api.userUpdate(
        username: username,
        email: email,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await api.signOut();
    } catch (_) {
      rethrow;
    }
  }
}
