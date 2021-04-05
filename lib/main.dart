import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/router.dart';
import 'package:sharksw_aleksey_test/screens/main_screen/main_screen.dart';
import 'package:sharksw_aleksey_test/theme/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColors.backgroundBlue),
      onGenerateRoute: AppRouter.generateRoute,
      home: MainScreen(),
    );
  }
}
