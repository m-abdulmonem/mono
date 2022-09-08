import 'dart:async';
import '/core/utils/custom_widgets.dart';

class SplashController extends GetxController {
  final _duration = 2;
  @override
  void onInit() {
    _timer();
    super.onInit();
  }

  void _timer() => Timer(Duration(seconds: _duration), () => _redirect());

  void _redirect() async {
    Get.offAllNamed(CustomWidgets.isLoggedIn
        ? "main"
        : CustomWidgets.isOnBoarding
            ? "auth"
            : "on/boarding");
  }
}
