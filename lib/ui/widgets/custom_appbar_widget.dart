import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laporku/common/route/route_name.dart';
import 'package:laporku/common/theme.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String titleAppbar;
  const CustomAppbarWidget({
    Key? key,
    required this.titleAppbar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            Get.toNamed(RouteName.notificationPage);
          },
          icon: const Icon(
            Icons.notifications,
          ),
        ),
      ],
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.subject_rounded,
          ),
        ),
      ),
      backgroundColor: blueColor,
      title: Text(titleAppbar),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize {
    double heightAppbar = AppBar().preferredSize.height;
    return Size.fromHeight(heightAppbar);
  }
}
