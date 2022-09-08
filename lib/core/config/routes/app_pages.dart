import 'package:get/get.dart';
import '/futures/category/presentation/category_view.dart';
import '/futures/main/presentation/main_view.dart';
import '/futures/auth/presentation/pages/verification/verification_view.dart';
import '../../utils/util/binding/auth_binding.dart';
import '/futures/auth/presentation/pages/forget_password/forget_password_view.dart';
import '/futures/auth/presentation/pages/login/login_view.dart';
import '/futures/auth/presentation/pages/register/register_view.dart';
import '/futures/splash/presentation/on_boarding/boarding_view.dart';
import '/futures/splash/presentation/splash/splash_view.dart';
import 'app_routes.dart';

mixin AppPages {
  final String initial = Routes.splash;

  final routes = <GetPage<dynamic>>[
    GetPage(name: Routes.splash, page: () => const SplashView()),
    GetPage(name: Routes.onBoarding, page: () => const BoardingView()),
    GetPage(
      name: Routes.auth,
      page: () => const LoginView(),
      binding: AuthBinding(),
      children: [
        GetPage(
          name: Routes.register,
          page: () => const RegisterView(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: Routes.forgetPassword,
          page: () => const ForgetPasswordView(),
          binding: AuthBinding(),
        ),
        GetPage(
            name: Routes.verification, page: () => const VerificationView()),
      ],
    ),
    GetPage(name: Routes.main, page: () => const MainView(), children: [
      GetPage(name: Routes.category, page: () => const CategoryView())
    ])
  ];
}
