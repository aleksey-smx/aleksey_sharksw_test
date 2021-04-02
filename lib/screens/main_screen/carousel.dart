import 'package:flutter/cupertino.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';
import 'package:sharksw_aleksey_test/widgets/app_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppCarousel extends StatelessWidget {
  final PageController _controller =
      PageController(initialPage: 0, viewportFraction: 1.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Suspendisse vel.',
                style: AppFonts.headline3,
              ),
              SmoothPageIndicator(
                effect: SlideEffect(
                  dotColor: Color(0xff71747B),
                  activeDotColor: AppColors.primaryBlue,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1,
                  dotHeight: 6,
                  dotWidth: 6,
                ),
                controller: _controller,
                count: 3,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 600,
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, int index) {
                return AppCard(
                  index: index + 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
