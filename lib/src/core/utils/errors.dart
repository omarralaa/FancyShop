class Errors {
  static String loginError(String msg) {
    switch (msg) {
      case 'EMAIL_NOT_FOUND':
        return 'Invalid email address';
      case 'INVALID_PASSWORD':
        return 'Wrong password';
      case 'USER_DISABLED':
        return 'Account has been disabled by admin';
      default:
        return 'An Error has occured';
    }
  }

  static String registerError(String msg) {
    switch (msg) {
      case 'EMAIL_EXISTS':
        return 'This email address already exists';
      case 'TOO_MANY_ATTEMPTS_TRY_LATER':
        return ' We have blocked all requests from this device due to unusual activity. Try again later.';
      default:
        return 'An Error has occured';
    }
  }
}
