import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:igeku/core/constant/constant.dart';
import 'package:igeku/core/utils/clippers/star_clipper..dart';
import 'package:igeku/ui/shared/themes.dart';
import 'package:igeku/ui/views/profile_view/profile_view.dart';
import 'package:igeku/ui/widgets/bottom_nav_bar.dart';
import 'package:igeku/ui/widgets/dummy_users.dart';
import 'package:igeku/ui/widgets/glassmorphism.dart';
import 'package:igeku/ui/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            user(context, Theme.of(context).colorScheme.onError, "@sajan.co",
                44.0, true),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Stories",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            _horizontalUsersContainers(),
            tile(
              context,
              "Trending",
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _cardWithImage(context),
                    SizedBox(
                      height: 10,
                    ),
                    tile(
                      context,
                      "Discover",
                    ),
                    _cardWithImage(context),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Row tile(BuildContext context, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 18.sp,
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "More",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 9.sp,
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Theme.of(context).colorScheme.secondaryContainer,
              size: 19,
            )
          ],
        ),
      ],
    );
  }

  Row user(BuildContext context, Color statusColor, String subTitle,
      borderRadius, bool search) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Container(
                            child: Image.network(
                              Constants.usersModel[2].userNetworkImage,
                              fit: BoxFit.cover,
                            ),
                            height: 45,
                            width: 45,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 5,
                      right: 0,
                      child: ClipOval(
                        child: Container(
                            height: 12, width: 12, color: statusColor),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sajan Islam",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12.sp,
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 9.sp,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.7),
                        ),
                  ),
                ],
              )
            ],
          ),
          if (search)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 39, 39, 39),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Icon(
                  Icons.search,
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                  size: 27,
                ),
              ),
            )
        ]);
  }

  Padding _cardWithImage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 54.h,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/skydiving-tandem-passenger-very-happy-260nw-698368000.jpg",
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.thumb_up_outlined,
                          size: 19,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Like",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 9.sp,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                        ),
                      ]),
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(24))),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: user(context, Theme.of(context).colorScheme.error,
                "2 min ago", 12.0, false),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello My Friends, Today I Did Skydiving For The First Time it Was A Crazy Experience",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 9.sp,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  _textSpan(context, "travel"),
                  _textSpan(context, "time"),
                  _textSpan(context, "skydiving"),
                  _textSpan(context, "firsttime"),
                  _textSpan(context, "viral"),
                ])),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
          // Spacer(),
          // _cardBottom(context)
        ]),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }

  TextSpan _textSpan(BuildContext context, String text) {
    return TextSpan(
        text: "#${text}  ",
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 10.sp,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
            fontWeight: FontWeight.bold));
  }

  Container _horizontalUsersContainers() {
    return Container(
      height: 250,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: Constants.usersModelTwo.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            showCupertinoModalBottomSheet(
            backgroundColor:Theme.of(context).colorScheme.onPrimary,
              context: context,
              builder: (context) => ProfileView(),
            );
          },
          child: FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 220,
                      width: 150,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Container(
                                child: Image.network(
                                    Constants
                                        .usersModelTwo[index].userNetworkImage,
                                    fit: BoxFit.cover),
                                height: 7.h,
                                width: 15.w,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                index == 1
                                    ? Container(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 4),
                                          child: Center(
                                              child: Text(
                                            "Premiere",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 9.sp),
                                          )),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: Colors.red),
                                      )
                                    : Container(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 4),
                                          child: Center(
                                              child: Text(
                                            "Live",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 9.sp),
                                          )),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "20.5k",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 9.sp),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          Constants.usersModelTwo[index].userName,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 10.sp,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        ClipPath(
                          clipper: StarClipper(14),
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.error),
                            child: Center(
                              child: Icon(
                                Icons.done_outlined,
                                color: Theme.of(context).colorScheme.primary,
                                size: 10,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Color(0xff8a4cff),
          Color.fromARGB(255, 142, 168, 209),
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
