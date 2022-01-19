import 'package:get/get.dart';

import 'package:portfolio/app/modules/portfolio/views/portfolio_view.dart';
import 'package:portfolio/app/modules/portfolio/views/contact_view.dart';
import 'package:portfolio/app/modules/portfolio/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.PORTFOLIO,
      page: () => PortfolioView(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => ContactView(),
      transition: Transition.zoom,
    ),
  ];
}
