import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../widgets/on_boarding_item.dart';

class BoardingController extends GetxController {
  PageController? pageController;
  bool isFinished = false;
  double pageIndex = 0;
  final int duration = 500;
  int? count = 0;

  final items = [
    const OnBoardingItem(
      image: "assets/images/on_boarding.svg",
      title: 'Find your service',
      subTitle: 'Lorem Ipsum is simply dummy text of the printing',
    ),
    const OnBoardingItem(
        image: "assets/images/on_boarding2.svg",
        title: 'Apply your service with us !',
        subTitle: 'Lorem Ipsum is simply dummy text of the printing'),
  ];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        update();
      });

    super.onInit();
  }

  void onPageChanged(page) {
    isFinished = (page == items.length - 1);
    pageIndex = double.parse(page.toString());
    update();
  }

  void onDotsTapped(page) {
    pageIndex = double.parse("$page");

    pageController?.animateToPage(page.toInt(),
        duration: Duration(milliseconds: duration), curve: Curves.easeIn);

    update();
  }

  void onTap() => isFinished ? save() : next();

  void next() {
    pageIndex += 1;

    pageController?.nextPage(
        duration: Duration(milliseconds: duration), curve: Curves.easeIn);

    update();
  }

  void save() {
    GetStorage().write("ON_BOARDING_FINISHED_KEY", true);

    Get.offNamed("auth");
  }
}
