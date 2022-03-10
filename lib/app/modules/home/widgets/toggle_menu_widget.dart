import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/values/app_colors.dart';
import '../controller/home_controller.dart';

class ToggleMenuWidget extends StatelessWidget {
  final int index;
  final String title;
  const ToggleMenuWidget({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Obx(
      () => GestureDetector(
        onTap: () {
          homeController.changeMenuIndex(index);
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            homeController.menuIndex.value == index
                ? Container(
                    height: 12,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      title,
                      style: const TextStyle(color: AppColors.colorPrimary),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  )
                : Container(),
            Container(
              alignment: Alignment.topCenter,
              height: 25,
              child: Text(
                title,
                style: GoogleFonts.roboto(
                  color: homeController.menuIndex.value == index
                      ? Colors.black
                      : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
