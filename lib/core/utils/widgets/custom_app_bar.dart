import 'package:flutter/material.dart';

import '../custom_widgets.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Color? tabBarColor, actionColor;
  final String? title;
  final IconData? actionIcon;
  final VoidCallback? onTapAction;
  final bool showNotificationIcon, isScrollable, isCategoryPage;
  final double indicatorWeight;
  final List<Widget> tabs;

  CustomAppBar(
      {Key? key,
      this.tabBarColor,
      this.title,
      this.actionColor = colorPrimary,
      this.actionIcon,
      this.onTapAction,
      this.showNotificationIcon = false,
      this.isScrollable = false,
      this.isCategoryPage = false,
      this.indicatorWeight = 3,
      this.tabs = const []})
      : preferredSize = Size.fromHeight(Get.height * .14),
        super(key: key);

  @override
  final Size preferredSize;

  List<Widget> _buildTabs() {
    return tabs.isNotEmpty
        ? tabs
        : [
            Tab(text: "waiting".toCapitalize),
            Tab(text: "working".toCapitalize),
            Tab(text: "finished".toCapitalize),
          ];
  }

  TabBar _buildTabBar() {
    return TabBar(
      indicatorPadding: EdgeInsets.symmetric(horizontal: Get.width * .06),
      padding: const EdgeInsets.only(top: 10),
      unselectedLabelColor: colorOrdinaryText,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: isCategoryPage ? Colors.white : colorPrimary,
      labelColor: isCategoryPage ? Colors.white : colorPrimary,
      isScrollable: isScrollable,
      indicator: isCategoryPage
          ? BoxDecoration(
              color: colorActive,
              borderRadius: BorderRadius.circular(15),
            )
          : null,
      tabs: _buildTabs(),
      indicatorWeight: indicatorWeight,
      onTap: (q) => "",
    );
  }

  PreferredSizeWidget? _buildTabInAppBar() {
    return PreferredSize(
      preferredSize: _buildTabBar().preferredSize,
      child: ColoredBox(
        color: tabBarColor ?? colorBackground,
        child: isCategoryPage
            ? _buildTabBar()
            : DecoratedTabBar(
                tabBar: _buildTabBar(),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xff878787)))),
              ),
      ),
    );
  }

  Widget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(Get.height * .3),
      child: AppBar(
        backgroundColor: Colors.white,
        title: title != null
            ? CustomText(
                title!,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )
            : const CustomSearchInput(),
        leading: showNotificationIcon
            ? IconButton(
                onPressed: () => "",
                icon: const Icon(Icons.notifications_none_sharp),
                color: colorPrimary)
            : null,
        actions: [
          IconButton(
            onPressed: onTapAction,
            icon: Icon(actionIcon,color: actionColor,),
            color: actionColor,
          ),
        ],
        bottom: _buildTabInAppBar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }
}

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar tabBar;
  final BoxDecoration decoration;
  const DecoratedTabBar(
      {Key? key, required this.tabBar, required this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * .06),
          decoration: decoration,
        )),
        tabBar
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => tabBar.preferredSize;
}

class CustomTab extends StatelessWidget {
  final String text;
  const CustomTab({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
      height: 40,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
