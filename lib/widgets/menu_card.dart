import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharksw_aleksey_test/models/link.dart';
import 'package:sharksw_aleksey_test/screens/app_browser/app_browser.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';
import 'package:sharksw_aleksey_test/theme/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuCard extends StatelessWidget {
  final BrowserLink link;
  MenuCard({required this.link});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        link.nativeBrowser
            ? Navigator.pushNamed(context, AppBrowser.routeName,
                arguments: link.urlLink)
            : await launch(link.urlLink);
      },
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: Color.fromRGBO(126, 126, 126, 0.15),
        child: Row(
          children: [
            Flexible(
              child: Text(
                link.title,
                style: AppFonts.headline4,
              ),
            ),
            SizedBox(
              width: 14,
            ),
            SvgPicture.asset(AppIcons.arrowRight),
          ],
        ),
      ),
    );
  }
}
