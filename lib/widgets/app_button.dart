import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';

class AppButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;

  AppButton({required this.onPressed, required this.buttonTitle});
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
                color: Color(0xff0076CE),
              ),
            ),
            child: Text(
              buttonTitle,
              style: AppFonts.subtitleButton,
            ),
          ),
          onPressed: onPressed as Function()),
    );
  }
}
