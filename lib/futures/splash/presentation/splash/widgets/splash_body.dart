import 'package:flutter_svg/svg.dart';
import '../manager/splash_controller.dart';
import '/core/utils/custom_widgets.dart';
import 'package:flutter/material.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  final SplashController controller = Get.put(SplashController());

  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  Animation<double>? _fadingAnimation() {
    listener() {
      setState(() {
        if (animationController!.isCompleted) {
          animationController?.repeat(reverse: true);
        }
      });
    }

    return Tween<double>(begin: 0.1, end: 1).animate(animationController!)
      ..addListener(listener);
  }

  void _animation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    fadingAnimation = _fadingAnimation();

    animationController?.forward();
  }

  @override
  void initState() {
    super.initState();
    _animation();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset("assets/images/logo.svg"),
        ),
        Positioned.fill(
            bottom: Get.height * .1,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: CustomText(
                "mono",
                fontSize: 20,
                color: Colors.white,
              ),
            ))
      ],
    );
  }

  Widget _buildFade() {
    return FadeTransition(opacity: fadingAnimation!, child: _buildBody());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: Get.width, child: _buildFade());
  }
}
