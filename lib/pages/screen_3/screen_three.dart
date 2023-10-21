import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/theme/app_theme.dart';
import '../../widgets/container_slider.dart';

class ScreenThree extends StatefulWidget {
  static const String routeName = 'ScreenThree';
   ScreenThree({
     super.key,
   });

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    final  containerList = [
      NewsWidget(
        color: Color(0xffFEF0C7),
        text_1: 'Self-Care',
        text_2: '10 Easy Self-Care',
        text_3: 'Help Boost Your Health',
        image: 'assets/images/fitness2.jpeg',),
      NewsWidget(
        color: Color(0xffFAA7E0),
        text_1: 'Cycle',
        text_2: 'Take care of your',
        text_3: 'Health',
        image: 'assets/images/fitness1.jpeg',),
    ];
    int currentIndex = 0 ;
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
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
            Container(
              width: 350,
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
                      fontSize: 18
                    ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label:  Text('Discover',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xff6941C6)
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Chip(
                      label:  Text('News',
                        style: theme.textTheme.bodyMedium)
                    ),
                    SizedBox(width: 10),
                    Chip(
                      label:  Text('Most Viewed',
                        style: theme.textTheme.bodyMedium,),
                    ),
                    SizedBox(width: 10),
                    Chip(
                      label:  Text('Saved',
                        style: theme.textTheme.bodyMedium,),
                    ),
                  ],
                ),
                ]
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Topics',
                  style: theme.textTheme.bodyLarge,
                ),
                Text('see more >',
                  style: theme.textTheme.bodySmall!.copyWith(
                      color: Color(0xff5925DC),
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            CarouselSlider(items: containerList,options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index , reason){
                  setState(() {
                    currentIndex = index;
                  });
                }

            ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Get Tips',
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 326,
              height: 196,
              decoration: BoxDecoration(
                color: Color(0xffF2F4F7),
                border: Border.all(
                  color: Colors.white10
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/doctor.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Connect with',
                        style: theme.textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                        Text('& get suggestions',
                          style: theme.textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                        Text('Connect now and',
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.start,
                        ),
                        Text('get expert insights ',
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.start,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff7F56D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                         onPressed: () {},
                            child: Text('View detail')
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cycle Phases and Period',
                  style: theme.textTheme.bodyLarge,
                ),
                Text('see more >',
                  style: theme.textTheme.bodySmall!.copyWith(
                      color: Color(0xff5925DC),
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
