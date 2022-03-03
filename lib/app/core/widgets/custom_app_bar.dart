import 'package:flutter/material.dart';
import 'package:news_explorer/app/core/values/app_style.dart';
import '../values/app_colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;
  const CustomAppBar({
    Key? key,
    required this.appBarTitleText,
    this.actions,
    this.isBackButtonEnabled = true,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarColor,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColors.appBarIconColor),
      title: Text(
        appBarTitleText,
        style: appBarStyle,
      ),
    );
  }
}
