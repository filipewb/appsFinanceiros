abstract class AuthService {
  Future signUp({
    String? name,
    required String email,
    required String password,
  });
  
  Future signIn();
}
