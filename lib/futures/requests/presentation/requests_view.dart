import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'widgets/requests_body.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({Key? key}) : super(key: key);

  PreferredSizeWidget? _buildAppBar(){
    return  CustomAppBar(
      showNotificationIcon: true,
      actionIcon: Icons.messenger_outline,
      actionColor: colorPrimary,
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: _buildAppBar(),
          body: const RequestsBody(),

        ));
  }
}
