import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final enabled;
  final Widget? child;
  final Color? color;

  const MainButton(
      {super.key,
      this.title = "",
      this.child,
      this.color,
      required this.onTap,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SizedBox(
        height: 55,
        child: InkWell(
          onTap: enabled == false ? null : onTap,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.3),
                borderRadius: BorderRadius.circular(15),
                color: color ?? Theme.of(context).cardColor),
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: child ??
                  Center(
                    child: Text(title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Theme.of(context).primaryColor)),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
