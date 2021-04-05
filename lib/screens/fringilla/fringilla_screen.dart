import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/models/link.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';
import 'package:sharksw_aleksey_test/widgets/app_button.dart';
import 'package:sharksw_aleksey_test/widgets/menu_card.dart';

class FringillaScreen extends StatelessWidget {
  static const String routeName = '/fringilla';

  final  List<BrowserLink> _linksList = [
    BrowserLink(
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      nativeBrowser: true,
      urlLink: 'https://flutter.dev',
    ),
    BrowserLink(
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      nativeBrowser: false,
      urlLink: 'https://flutter.dev',
    ),
    BrowserLink(
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      nativeBrowser: true,
      urlLink: 'https://flutter.dev',
    ),
    BrowserLink(
      title:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisi nunc non, luctus fringilla tempus. Curabitur est.',
      nativeBrowser: false,
      urlLink: 'https://flutter.dev',
    ),
    BrowserLink(
      title:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vestibulum nisl auctor.',
      nativeBrowser: true,
      urlLink: 'https://flutter.dev',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Fringilla vulputate.',
                style: AppFonts.headline3,
              ),
            ),

            Text(
              'Massa risus.',
              style: AppFonts.bodyRegular,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _linksList.length,
              itemBuilder: (context, index) {
                print(_linksList[index].title);
                return MenuCard(
                  link: _linksList[index],
                );
              },
            ),
            AppButton(
              buttonTitle: 'Lorem Ipsum',
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
