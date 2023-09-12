import 'package:cbt_mobile_application/configs/themes/app_icon.dart';
import 'package:cbt_mobile_application/configs/themes/custom_text_style.dart';
import 'package:cbt_mobile_application/screens/view/exam_overview_screen.dart';
import 'package:cbt_mobile_application/widgets/app_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title = '',
      this.showActionIcon = false,
      this.leading,
      this.titleWidget,
      this.onMenuActionTap});

  final String title;
  final Widget? titleWidget;
  final Widget? leading;
  final bool showActionIcon;
  final VoidCallback? onMenuActionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            Positioned.fill(
              child: titleWidget == null
                  ? Center(
                      child: Text(
                        title,
                        style: AppBarTS,
                      ),
                    )
                  : Center(
                      child: titleWidget,
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ??
                    Transform.translate(
                      offset: const Offset(-14, 0),
                      child: const BackButton(
                        color: Colors.black,
                      ),
                    ),
                if (showActionIcon)
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: AppCircleButton(
                      onTap: () {
                        onMenuActionTap ??
                            Get.to(() => const ExamOverviewScreen());
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}
