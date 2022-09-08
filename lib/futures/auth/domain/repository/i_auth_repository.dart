abstract class IAuthRepository {

  Future singIn({String? phone, String? password});

  Future<void> singUp({String? phone, String? password});

  Future<void> forgetPassword({String? auth,bool? isEmail});

  Future resetPassword({String? auth,bool? isEmail});

  Future verify(String? code);

  Future<void> loginWithFacebook();

  Future<void> loginWithGoogle();

  Future<void> singInAnonymously();

  Future<void> signOut();
}
