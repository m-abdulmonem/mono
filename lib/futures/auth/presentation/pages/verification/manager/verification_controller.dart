import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VerificationController extends GetxController{
  TextEditingController? controller1 = TextEditingController();
  TextEditingController? controller2 = TextEditingController();
  TextEditingController? controller3 = TextEditingController();
  TextEditingController? controller4 = TextEditingController();

  int start = 120;

  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  void _startTimer(){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (start ==0){
        timer.cancel();
      }else{
        start--;
        update();
      }
    });
  }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

}