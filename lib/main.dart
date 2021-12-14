import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laporku/services/controller/auth_controller.dart';
import 'package:laporku/ui/page/first_page.dart';
import 'common/route/page_route.dart';
import 'common/route/route_name.dart';

void main() async {
  // NOTE: keep the app portrait up
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: StreamBuilder<User?>(
          stream: authC.streamAuthStatus,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              print(snapshot.data);
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: snapshot.data != null
                    ? RouteName.bottomNavbarWidget
                    : RouteName.firstPage,
                getPages: AppRoute.pages,
              );
            }
            return const FirstPage();
          },
        ),
      ),
    );
  }
}
