
import 'package:flutter/material.dart';
import 'package:home_service_application/config/dependency_injection.dart';
import 'package:home_service_application/core/resources/manager_strings.dart';
import 'package:home_service_application/features/auth/presentation/view/login_view.dart';
import 'package:home_service_application/features/auth/presentation/view/register_view.dart';
import 'package:home_service_application/features/main/presentation/view/main_view.dart';
import 'package:home_service_application/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:home_service_application/features/search/presentation/view/search_view.dart';
import 'package:home_service_application/features/splash/presentation/view/splash_view.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String onBoardingView = '/on_boarding_view';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String mainView = '/main_view';
  static const String searchView = '/search_view';
}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingView:
        initOnBoarding();
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginView:
        initLoginModule();
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.mainView:
        initMainModule();
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.registerView:
        initRegisterModule();
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.searchView:
        initSearchModule();
        return MaterialPageRoute(builder: (_) => const SearchView());
      default:
        return unDefinedRoute();
    }
  }


  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(ManagerStrings.noRoutFound),
        ),
        body: const Center(
          child: Text(ManagerStrings.noRoutFound),
        ),
      ),
    );
  }

}