import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class ScreenThree extends StatelessWidget {
  static const String routeName = 'ScreenThree';
   ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment(0, 2),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 100,
                  width: double.infinity,
                  color: AppTheme.whiteColor,
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Image.asset('assets/images/flower.png'),
                              SizedBox(width: 10),
                              Text('AliceCare',
                                style: theme.textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                        ],
                      ),
                  ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 320,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff667085),
                      ),
                      color: AppTheme.whiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search,
                            color: Color(0xff667085),
                          ),
                          SizedBox(width: 4),
                          Text('Articles, Video, Audio and More,...',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Color(0xff667085),
                            fontSize: 16
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Chip(
                    label:  Text('Discover',
                      style: theme.textTheme.bodyMedium,),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
