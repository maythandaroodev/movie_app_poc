import 'package:flutter/material.dart';

class InfoTextWidget extends StatelessWidget {
  const InfoTextWidget({super.key, required this.infoText, required this.padding});
  final String infoText;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(infoText,style: const TextStyle(
          color: Colors.grey,
          fontSize: 17
      ),),
    );
  }
}
