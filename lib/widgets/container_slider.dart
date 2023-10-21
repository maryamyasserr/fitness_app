import 'package:fitness_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ContainerSlider extends StatelessWidget {
  Color color;
  String text_1;
  String text_2;
  String text_3;
   ContainerSlider({
     super.key,
     required this.color,
     required this.text_1,
     required this.text_2,
     required this.text_3
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 186,
      width: 340,
      decoration: BoxDecoration(
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
                Text(text_1,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: Color(0xff344054),
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 10),
                Text(text_2,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(text_3,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.play_circle,
                      color: AppTheme.blackColor,
                    ),
                    SizedBox(width: 10),
                    Text('10 mins',
                      style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600
                      ),
                    ),

                  ],
                ),
              ],
            ),
            Row(
              children: [
                //Image.asset('assets/images/feature_image.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
