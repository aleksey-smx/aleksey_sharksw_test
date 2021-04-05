import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';

class AppButton extends StatelessWidget {
  final String buttonTitle;
  final Function
      onPressed; // TODO: use VoidCallback instead (Why should I use callback? Is it better than a function as parameter? And why is it better?)

  AppButton({Key? key, required this.onPressed, required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        child: Container(
          alignment: Alignment.center,
          height: 46,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryBlue,
            ),
          ),
          child: Text(
            buttonTitle,
            style: AppFonts.subtitleButton,
          ),
        ),
        onPressed: onPressed
            as Function(), // TODO: remove explicit casting. (if I remove it, i will get an error)
      ),
    );
  }
}
