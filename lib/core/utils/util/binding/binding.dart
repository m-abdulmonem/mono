import 'package:get/get.dart';
import '/futures/category/presentation/manager/category_controller.dart';
import '/futures/home/presentation/manager/home_controller.dart';
import '/futures/main/presentation/manger/main_controller.dart';
import '/futures/auth/presentation/pages/verification/manager/verification_controller.dart';
import '/futures/splash/presentation/on_boarding/manger/boarding_controller.dart';
import '/futures/splash/presentation/splash/manager/splash_controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => BoardingController());
    Get.lazyPut(() => VerificationController());
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoryController());
  }

}