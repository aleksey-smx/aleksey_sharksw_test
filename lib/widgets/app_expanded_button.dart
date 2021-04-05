import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';
import 'package:sharksw_aleksey_test/theme/app_icons.dart';

class AppExpandedButton extends StatelessWidget {
  AppExpandedButton({
    Key? key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as Function(),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            width: 1,
            color: AppColors.cardGrey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppFonts.captionLabel,
            ),
            SvgPicture.asset(AppIcons.arrowRight),
          ],
        ),
      ),
    );
  }
}
