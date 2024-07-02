class Validators {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'E-mail não pode ser vazio';
    }
    // Adicione mais validações de e-mail aqui, se necessário
    return null;
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Senha não pode ser vazia';
    }
    // Adicione mais validações de senha aqui, se necessário
    return null;
  }
}
