import 'package:get_storage/get_storage.dart';

abstract class IAuthProvider {
  Future signIn({String? phone, String? password});
  Future signUp({String? phone, String? password});

  Future forgetPassword({String? phone});
  Future signInWithGoogle();
  Future signInWithFacebook();

  Future<void> signInAnonymously();
  Future<void> signOut();
}

class AuthProvider implements IAuthProvider {
  final _storage = GetStorage();

  @override
  Future forgetPassword({String? phone}) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }

  @override
  Future signIn({String? phone, String? password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signInAnonymously() async {
    _storage.write("IS_LOGGED_KEY",true);
  }

  @override
  Future signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    _storage.remove("IS_LOGGED_KEY");
  }

  @override
  Future signUp({String? phone, String? password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
