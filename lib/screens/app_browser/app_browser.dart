import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_icons.dart';
import 'package:web_browser/web_browser.dart';

class AppBrowser extends StatelessWidget {
  static const String routeName = '/browser';
  final String url;

  AppBrowser({required this.url});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundBlue,
          leading: IconButton(
            icon: SvgPicture.asset(AppIcons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: WebBrowser(
          initialUrl: url,
          javascriptEnabled: true,
        ),
      ),
    );
  }
}
