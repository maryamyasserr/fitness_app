import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/widgets/container_slider.dart';
import 'package:fitness_app/widgets/excercise_container.dart';
import 'package:fitness_app/widgets/mood_widget.dart';
import 'package:fitness_app/widgets/rate_container.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/theme/app_theme.dart';

class ScreenOne extends StatefulWidget {
  static const String routeName = 'ScreenOne';
   ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    final  containerList = [
      ContainerSlider(color: Color(0xffECFDF3), text_1: 'Positive Vibes', text_2: 'Boost your mood with', text_3: 'Positive Vibes'),
      ContainerSlider(color: Color(0xffFAA7E0), text_1: 'Meditaion', text_2: 'Boost your mood with', text_3: 'Meditaion Vibes',),
      ContainerSlider(color: Color(0xffB692F6), text_1: 'Relaxation', text_2: 'Boost your mood with', text_3: 'Relaxation Vibes',),
      ContainerSlider(color: Color(0xffFEB273), text_1: 'Breathing', text_2: 'Boost your mood with', text_3: 'Breathing Vibes',),
      ContainerSlider(color: Color(0xff7CD4FD), text_1: 'Yoga', text_2: 'Boost your mood with', text_3: 'Yoga Vibes')
    ];
    int currentIndex = 0 ;
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/logo_icon.png'),
                            SizedBox(width: 10),
                            Text('Moody',
                            style: theme.textTheme.titleLarge,
                            ),
                             Spacer(),
                             Image.asset('assets/images/bell_icon.png',
                             ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Hello,',
                      style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(width: 5),
                      Text('Sara Rose',
                      style: theme.textTheme.bodyLarge,
                      )
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Text('How are you feeling today ?',
                      style: theme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                  SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MoodWidget(image: 'assets/images/love.png', text: 'Love'),
                      MoodWidget(image: 'assets/images/cool.png', text: 'Cool'),
                      MoodWidget(image: 'assets/images/happy.png', text: 'Happy'),
                      MoodWidget(image: 'assets/images/sad.png', text: 'Sad'),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Feature',
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text('see more >',
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: AppTheme.selectedColor,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12),
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
                  SizedBox(height: 15),
                  AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: containerList.length,
                      effect: WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 10,
                        dotColor: Colors.grey.shade400,
                        activeDotColor: Colors.grey.shade600,
                        paintStyle: PaintingStyle.fill,
                      ),
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exercise',
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text('see more >',
                        style: theme.textTheme.bodySmall!.copyWith(
                            color: AppTheme.selectedColor,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseContainer(image: 'assets/images/purple_icon.png', text: 'Relaxation', color: Color(0xffF9F5FF),),
                      ExerciseContainer(image: 'assets/images/pink_icon.png', text: 'Meditation', color: Color(0xffFDF2FA),)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseContainer(image: 'assets/images/orange_icon.png', text: 'Breathing', color: Color(0xffFFFAF5),),
                      ExerciseContainer(image: 'assets/images/blue_icon.png', text: 'Yoga', color: Color(0xffF0F9FF),)
                    ],
                  ),
                ],
            ),
        ),
      );
  }
}
