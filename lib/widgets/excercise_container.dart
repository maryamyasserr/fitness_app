import 'package:flutter/material.dart';

class ExerciseContainer extends StatelessWidget {
  String image;
  String text;
  Color color;
  ExerciseContainer({
    super.key,
    required this.image,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ,
      ),

      height: 56,
      width: 151,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),

          SizedBox(width: 20),
          Text(text,
          style: theme.textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w500
          ),
          )
        ],
      ),
    );
  }
}
