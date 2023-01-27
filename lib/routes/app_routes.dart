import 'package:all_the_way_home/presentation/landing_page_with_logo_screen/landing_page_with_logo_screen.dart';
import 'package:all_the_way_home/presentation/landing_page_with_logo_screen/binding/landing_page_with_logo_binding.dart';
import 'package:all_the_way_home/presentation/home_page_screen/home_page_screen.dart';
import 'package:all_the_way_home/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:all_the_way_home/presentation/page_one_screen/page_one_screen.dart';
import 'package:all_the_way_home/presentation/page_one_screen/binding/page_one_binding.dart';
import 'package:all_the_way_home/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:all_the_way_home/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String landingPageWithLogoScreen =
      '/landing_page_with_logo_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String pageOneScreen = '/page_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: landingPageWithLogoScreen,
      page: () => LandingPageWithLogoScreen(),
      bindings: [
        LandingPageWithLogoBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: pageOneScreen,
      page: () => PageOneScreen(),
      bindings: [
        PageOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LandingPageWithLogoScreen(),
      bindings: [
        LandingPageWithLogoBinding(),
      ],
    )
  ];
}
