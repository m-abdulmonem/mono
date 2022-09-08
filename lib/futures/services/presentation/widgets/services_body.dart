import 'package:flutter/material.dart';
import 'package:mono/core/utils/widgets/custom_posts.dart';

class ServicesBody extends StatelessWidget {
  final EdgeInsets padding = const EdgeInsets.symmetric(vertical: 10);
  const ServicesBody({Key? key}) : super(key: key);

  Widget _buildWaitting() {
    return ListView.builder(
      // padding: padding,
      itemCount: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding,
          child: const CustomPostInline(
            status: "waitting",
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
          child: const CustomPostInline(
            status: "Working",
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
          child: const CustomPostInline(
            status: "Finished",
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        //screens
        _buildWaitting(),
        _buildWorking(),
        _buildFinished()
      ],
    );
  }
}
