import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';

class AppCard extends StatelessWidget {
  final int index;
  AppCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: Color.fromRGBO(126, 126, 126, 0.15),
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color: AppColors.cardGrey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              index.toString(),
              style: AppFonts.display,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'assets/images/image2.png',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Lorem Ipsum',
              style: AppFonts.headline3,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Dui mattis risus elit purus feugiat quis in sit.',
              style: AppFonts.bodyRegular,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Egestas scelerisque vel.',
              style: AppFonts.captionLabel.copyWith(color: AppColors.linkBlue),
            )
          ],
        ),
      ),
    );
  }
}
