import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/page/home_page.dart';
import 'package:laporku/ui/page/laporanku_page.dart';
import 'package:laporku/ui/page/profile_page.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavbarWidgetState createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int _indexNav = 0;
  final List _listNav = [
    {
      "label": "Beranda",
      "icon": Icons.home,
      "fragment": const HomePage(),
    },
    {
      "label": "Laporanku",
      "icon": Icons.list,
      "fragment": const LaporankuPage(),
    },
    {
      "label": "Profile",
      "icon": Icons.account_circle,
      "fragment": ProfilePage(),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text("Tekan sekali lagi untuk keluar"),
        ),
        child: BottomNavigationBar(
          selectedItemColor: blueColor,
          onTap: (int val) {
            setState(() {
              _indexNav = val;
            });
          },
          items: _listNav.map((data) {
            return BottomNavigationBarItem(
              label: data['label'],
              icon: Icon(
                data['icon'],
              ),
            );
          }).toList(),
          currentIndex: _indexNav,
        ),
      ),
      body: _listNav[_indexNav]['fragment'],
    );
  }
}
