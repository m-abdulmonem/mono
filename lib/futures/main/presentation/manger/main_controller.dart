
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/futures/profile/presentation/profile_view.dart';
import '../../../home/presentation/home_view.dart';
import '../../../requests/presentation/requests_view.dart';
import '../../../services/presentation/services_view.dart';

class MainController extends GetxController{

  int selectedView = 0;

  List<Widget> views = const <Widget>[
     HomeView(),
    ServicesView(),
    RequestsView(),
    ProfileView()

  ];

  void onItemTapped(int index) {
    selectedView = index;
    update();
  }

}