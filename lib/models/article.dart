class Article {
  final String? title;
  final String? subTitle;
  final String image;
  final List<String> paragraph;

  Article(
      {this.title,
      this.subTitle,
      required this.image,
      required this.paragraph});
}
