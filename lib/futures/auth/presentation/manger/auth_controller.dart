import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/repository/i_auth_repository.dart';
import 'validator.dart';

class AuthController extends GetxController with Validator {
  GlobalKey<FormState> authForm = GlobalKey<FormState>();
  final IAuthRepository authRepository;
  String password = "", phone = "",authType = "phone";
  bool isPassHide = true;
  AuthController({required this.authRepository});


  get form => authForm.currentState;

  void signIn() async {
    if (form!.validate()) {
      form.save();
      await authRepository.singIn(phone: phone, password: password);
    }
  }

  void signUp() async {
    if (form!.validate()) {
      form.save();
      await authRepository.singUp(
        password: password,
        phone: phone,
      );
    }
  }

  void forgetPassword() async {
    if (form!.validate()) {
      form.save();
      Get.toNamed("auth/verification");
      // await authRepository.forgetPassword(auth: phone);
    }
  }


  void signInWithFacebook() async => await authRepository.loginWithFacebook();

  void signInWithGoogle() async => await authRepository.loginWithGoogle();

  void signInAnon() async => await authRepository.singInAnonymously();

  void signOut() async => await authRepository.signOut();


  void showPass(){
    isPassHide = !isPassHide;
    if (kDebugMode) {
      print(isPassHide);
    }
    update();
  }

  void selectAuthType(val){
    authType = val;
    update();
  }
}
