import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/models/article.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';
import 'package:sharksw_aleksey_test/theme/app_fonts.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;
  ArticleWidget({required this.article});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: 1,
              color: Color.fromRGBO(
                  126, 126, 126, 0.15)), //AppColors.cardGrey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          article.title != null
              ? Text(
                  article.title!,
                  style: AppFonts.headline3,
                )
              : SizedBox(),
          SizedBox(
            height: 20,
          ),
          article.subTitle != null
              ? Text(
                  article.subTitle!,
                  style: AppFonts.bodyRegular,
                )
              : SizedBox(),
          SizedBox(
            height: 28,
          ),
          Image.asset(article.image),
          SizedBox(
            height: 50,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: article.paragraph.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
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
