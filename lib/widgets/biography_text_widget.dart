import 'package:flutter/material.dart';

class BiographyTextWidget extends StatelessWidget {
  const BiographyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
      ,style: TextStyle(
          color: Colors.grey,
          fontSize: 17
      ),
    );
  }
}
