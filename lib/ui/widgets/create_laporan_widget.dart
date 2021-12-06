import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';

class CreateLaporanWidget extends StatelessWidget {
  final String title, imageUrl, description;
  final Color color;
  const CreateLaporanWidget(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.color,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(defaultRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/$imageUrl.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Text(
            description,
            softWrap: true,
            textAlign: TextAlign.center,
            style: greyTextStyle.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
