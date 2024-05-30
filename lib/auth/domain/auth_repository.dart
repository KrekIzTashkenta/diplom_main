abstract class AuthRepository {
  Future<dynamic> signOut();

  Future<dynamic> signUp({
    required String password,
    required String email,
  });

  Future<dynamic> signIn({
    required String password,
    required String email,
  });

  Future<dynamic> getProfile();

  Future<dynamic> userUpdate({
    String? email,
    String? username,
  });

  Future<dynamic> passwordUpdate({required String password});
}
