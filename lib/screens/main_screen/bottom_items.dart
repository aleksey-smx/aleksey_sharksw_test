import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/screens/egestas/egestas_screen.dart';
import 'package:sharksw_aleksey_test/screens/fringilla/fringilla_screen.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';
import 'package:sharksw_aleksey_test/widgets/app_expanded_button.dart';

class BottomItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sollicitudin in tortor.',
            style: AppFonts.headline3,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Platea sollicitudin platea habitant senectus. Placerat.',
            style: AppFonts.captionLabel.copyWith(
              color: AppColors.textGrey,
            ),
          ),
          AppExpandedButton(
            title: 'Egestas scleri',
            onTap: () => Navigator.pushNamed(context, EgestasScreen.routeName),
          ),
          AppExpandedButton(
            title: 'Consectur',
            onTap: () =>
                Navigator.pushNamed(context, FringillaScreen.routeName),
          )
        ],
      ),
    );
  }
}
