import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';
import 'package:movie_app_poc/constants/dimens.dart';

class InfoTextWidget extends StatelessWidget {
  const InfoTextWidget({super.key, required this.infoText, required this.padding});
  final String infoText;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(infoText,style: const TextStyle(
          color: kGreyColor,
          fontSize: kFS17x
      ),),
    );
  }
}
