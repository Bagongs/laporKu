import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/widgets/logo_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);
  static const routeName = '/notification-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: blueColor,
        title: _notificationTitle(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logoWidget(300, 180, "notif"),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Anda belum mendapatkan notifikasi",
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _notificationTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.notifications),
        const SizedBox(
          width: 6,
        ),
        Text(
          "Notification",
          style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        )
      ],
    );
  }
}
