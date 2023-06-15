import 'package:flutter/material.dart';

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
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25
      ),),
    );
  }
}
