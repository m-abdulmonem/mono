import 'package:get/get.dart';
import '../provider/auth_provider.dart';
import '../../domain/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final AuthProvider provider;

  AuthRepository({required this.provider});

  @override
  Future<void> loginWithFacebook() async {
    // var result = await provider.signInWithFacebook();
    Get.offAllNamed("main");
  }

  @override
  Future<void> loginWithGoogle() async {
    // var result = await provider.signInWithGoogle();
    Get.offAllNamed("main");
  }

  @override
  Future<void> singUp({String? password, String? phone}) async {
    // var result = await provider.signUp(password: password, phone: phone);
    Get.offAllNamed("main");
  }

  @override
  Future<void> singInAnonymously() async {
    await provider.signInAnonymously();

    Get.offAllNamed("main");
  }

  @override
  Future<void> signOut() async {
    await provider.signOut();
    Get.offAllNamed("auth");
  }

  @override
  Future verify(String? code) {
    // TODO: implement verify
    throw UnimplementedError();
  }

  @override
  Future<void> forgetPassword({String? auth, bool? isEmail}) async{
    // var result = await provider.forgetPassword(phone: auth);
    Get.offAllNamed("main");
  }

  @override
  Future resetPassword({String? auth, bool? isEmail}) async{
    // var result = await provider.forgetPassword(phone: auth);
    Get.offAllNamed("main");
  }

  @override
  Future singIn({String? phone, String? password}) async{
    // var result = await provider.signIn(password: password, phone: phone);
    Get.offAllNamed("main");
  }
}
