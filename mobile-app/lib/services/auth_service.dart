class AuthService {
  // Simula a lógica de autenticação
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2)); // Simula tempo de resposta
    return email == 'user@example.com' && password == 'password123';
  }

  Future<bool> register(String name, String email, String password) async {
    await Future.delayed(Duration(seconds: 2)); // Simula tempo de resposta
    return email != 'user@example.com'; // Simula verificação de e-mail já registrado
  }

  Future<void> recoverPassword(String email) async {
    await Future.delayed(Duration(seconds: 2)); // Simula tempo de resposta
  }
}
