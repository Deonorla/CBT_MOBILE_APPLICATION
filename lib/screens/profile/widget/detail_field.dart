import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailField extends StatelessWidget {
  final Icon icon;
  final String detail;
  const DetailField(
      {super.key,
      required this.size,
      required this.detail,
      required this.icon});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: size.width / 1.5,
                  height: 20,
                  child: const Divider(
                    color: darkColor,
                    thickness: 1,
                    height: 1,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
