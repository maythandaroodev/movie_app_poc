import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';

import '../constants/dimens.dart';
import '../constants/strings.dart';

class BiographyTextWidget extends StatelessWidget {
  const BiographyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(kBiographyText
      ,style: TextStyle(
          color: kGreyColor,
          fontSize: kFS17x
      ),
    );
  }
}
