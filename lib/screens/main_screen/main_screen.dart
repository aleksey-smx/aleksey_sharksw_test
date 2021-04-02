import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharksw_aleksey_test/screens/main_screen/carousel.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';
import 'package:sharksw_aleksey_test/theme/app_icons.dart';
import 'bottom_items.dart';

class MainScreen extends StatelessWidget {
  static const String routeName = '/main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 60.0, left: 24.0, right: 24.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(126, 126, 126, 0.15),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fames volutpat.',
                        style: AppFonts.headline3,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nam',
                            style: AppFonts.captionLabel
                                .copyWith(color: AppColors.textGrey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Euismod.',
                                style: AppFonts.bodyBold,
                              ),
                              IconButton(
                                icon: SvgPicture.asset(AppIcons.edit),
                                onPressed: () => null,
                              )
                            ],
                          )
                        ],
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/image1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(
                              126, 126, 126, 0.15)), //AppColors.cardGrey),
                    ),
                  ),
                  child: AppCarousel(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: BottomItems(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
