import 'package:flutter/material.dart';

class MoodWidget extends StatelessWidget {
  String image;
  String text;
  MoodWidget({super.key,
  required this.image,
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(image),
        SizedBox(height: 4),
        Text(text,
          style: theme.textTheme.bodyMedium,),
      ],
    );
  }
}
