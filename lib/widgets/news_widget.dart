import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';

class NewsWidget extends StatelessWidget {
  Color color;
  String text_1;
  String text_2;
  String text_3;
  String image;
  NewsWidget({
    super.key,
    required this.color,
    required this.text_1,
    required this.text_2,
    required this.text_3,
    required this.image

  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 186,
      width: 340,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                image
            ),
            fit: BoxFit.cover
        ),
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 24,
                    width: 88,
                    decoration: BoxDecoration(
                      color: Color(0xffFEF0C7),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(text_1,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xff93370D),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(text_2,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: AppTheme.whiteColor
                  ),
                ),
                Text(text_3,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: AppTheme.whiteColor,
                  )
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
