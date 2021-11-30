import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = "/home_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laporan"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: Image.asset(
                      "assets/dummy.jpg",
                      height: 180,
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Jalan Rusak di Jl. Pamularsih dekat Indomaret",
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.account_box),
                              Text("Azizah"),
                            ],
                          ),
                          const Text("April")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.arrow_upward),
                              Icon(Icons.comment),
                              Icon(Icons.share),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "•",
                                style:
                                    TextStyle(color: yellowColor, fontSize: 36),
                              ),
                              const Text("Dalam Proses"),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
