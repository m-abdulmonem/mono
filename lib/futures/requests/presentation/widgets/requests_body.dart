import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import '/core/utils/widgets/custom_posts.dart';

class RequestsBody extends StatelessWidget {
  final EdgeInsets padding = const EdgeInsets.symmetric(vertical: 10);
  const RequestsBody({Key? key}) : super(key: key);

  Widget _buildWaitting() {
    return ListView.builder(
      // padding: padding,
      itemCount: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding,
          child: const CustomPostBlock(
            status: "On hold",
          ),
        );
      },
    );
  }

  Widget _buildWorking() {
    return ListView.builder(
      padding: padding,
      itemCount: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding,
          child: const CustomPostBlock(
            status: "Ongoing",
          ),
        );
      },
    );
  }

  Widget _buildFinished() {
    return ListView.builder(
      padding: padding,
      itemCount: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding,
          child: const CustomPostBlock(
            status: "cancelled",
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * .02,horizontal: 12),
      child: TabBarView(
        children: [
          //screens
          _buildWaitting(),
          _buildWorking(),
          _buildFinished()
        ],
      ),
    );
  }
}
