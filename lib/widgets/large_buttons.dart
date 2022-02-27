import 'package:allinone/component/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;
  const AppLargeButton({
    Key? key,
    this.backgroundColor = AppColor.mainColor,
    this.textColor,
    this.onTap,
    this.isBorder = false,
    required this.text,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        height: 32,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
            border: Border.all(width: 2, color: AppColor.mainColor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
          ),
        ),
      ),
    );
  }
}
