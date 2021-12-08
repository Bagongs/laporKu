import 'package:get/get.dart';
import 'package:laporku/common/route/route_name.dart';
import 'package:laporku/ui/page/detail_page.dart';
import 'package:laporku/ui/page/first_page.dart';
import 'package:laporku/ui/page/form_laporan_page.dart';
import 'package:laporku/ui/page/home_page.dart';
import 'package:laporku/ui/page/notification_page.dart';
import 'package:laporku/ui/page/sign_in_page.dart';
import 'package:laporku/ui/page/sign_up_page.dart';
import 'package:laporku/ui/page/splash_screen.dart';
import 'package:laporku/ui/widgets/bottomnavbar_custom_widget.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.formLaporanPage,
      page: () => const FormLaporanPage(),
    ),
    GetPage(
      name: RouteName.notificationPage,
      page: () => const NotificationPage(),
    ),
    GetPage(
      name: RouteName.bottomNavbarWidget,
      page: () => const BottomNavbarWidget(),
    ),
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteName.firstPage,
      page: () => const FirstPage(),
    ),
    GetPage(
      name: RouteName.signInPage,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: RouteName.signUpPage,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: RouteName.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteName.detailPage,
      page: () => const DetailPage(),
    ),
  ];
}
