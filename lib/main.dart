import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laporku/ui/page/first_page.dart';
import 'package:laporku/ui/page/home_page.dart';
import 'package:laporku/ui/page/notification_page.dart';
import 'package:laporku/ui/page/sign_in_page.dart';
import 'package:laporku/ui/page/sign_up_page.dart';
import 'package:laporku/ui/page/splash_screen.dart';
import 'package:laporku/ui/widgets/bottomnavbar_custom_widget.dart';

void main() {
  // NOTE: keep the app portrait up
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        NotificationPage.routeName: (context) => const NotificationPage(),
        BottomNavbarWidget.routeName: (context) => const BottomNavbarWidget(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        FirstPage.routeName: (context) => const FirstPage(),
        SignInPage.routeName: (context) => const SignInPage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
