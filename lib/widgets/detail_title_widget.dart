import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';

import '../constants/dimens.dart';

class DetailTitleWidget extends StatelessWidget {
  const DetailTitleWidget({super.key, required this.title, required this.padding, });
  final String title;
  // final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(title,style: const TextStyle(
          color: kWhiteColor,
          fontWeight: FontWeight.bold,
          fontSize: kFS25x
      ),),
    );
  }
}
