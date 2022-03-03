import 'package:flutter/material.dart';

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
  Size get preferredSize => throw UnimplementedError();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.appBarIconColor),
      title: Text(
        appBarTitleText,
      ),
    );
  }
}
