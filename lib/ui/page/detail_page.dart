import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Detail Page", style: whiteTextStyle),
                    background: Image.asset(
                      "assets/dummy.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(defaultSmallMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.account_circle),
                            Text("Azizah"),
                          ],
                        ),
                        const Text("April")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSmallMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_circle_up),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.comment,
                          size: 22.5,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.share,
                          size: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "•",
                          style: TextStyle(color: yellowColor, fontSize: 36),
                        ),
                        const Text("Dalam Proses"),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(defaultSmallMargin),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sepatu Compas",
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 28,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: defaultMargin),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
