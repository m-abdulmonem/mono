import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'manger/main_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  List<BottomNavigationBarItem> _items() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.house),
        label: "Home",
      ),
      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.briefcase), label: "My Services"),
      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.cartShopping), label: "My requests"),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.user),
        label: "Profile",
      ),
    ];
  }

  Widget _buildBody() {
    return GetBuilder<MainController>(
      builder: (controller) {
        return controller.views.elementAt(controller.selectedView);
      },
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      iconSize: 20,
      unselectedItemColor: const Color(0xff878787),
      backgroundColor: Colors.black,
      selectedItemColor: colorActive,
      showUnselectedLabels: true,
      currentIndex: controller.selectedView,
      onTap: controller.onItemTapped,
      enableFeedback: true,
      items: _items(),
      type: BottomNavigationBarType.fixed,
    );
  }

  Widget _buildBottomNavigationBuilder() {
    return GetBuilder<MainController>(
      builder: (controller) => Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: _buildBottomNavigation(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBuilder(),
    );
  }
}
