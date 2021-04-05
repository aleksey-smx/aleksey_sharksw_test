import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/models/article.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';

class ArticleWidget extends StatelessWidget {
  ArticleWidget({
    required this.article,
  });
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: 1,
              color:
                  Color.fromRGBO(126, 126, 126, 0.15)), //AppColors.cardGrey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          article.title != null
              ? Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                    article.title!,
                    style: AppFonts.headline3,
                  ),
              )
              : const SizedBox(height: 20.0,),
          article.subTitle != null
              ? Padding(
                padding: const EdgeInsets.only(bottom: 28,),
                child: Text(
                    article.subTitle!,
                    style: AppFonts.bodyRegular,
                  ),
              )
              : const SizedBox(height: 28,),
          Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Image.asset(article.image)),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: article.paragraph.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: RichText(
                  text: TextSpan(
                    text: '${index + 1}.   ',
                    style: AppFonts.captionLabel
                        .copyWith(color: AppColors.textGrey),
                    children: [
                      TextSpan(
                        text: article.paragraph[index],
                        style: AppFonts.captionLabel.copyWith(),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
