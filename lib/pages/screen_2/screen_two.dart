import 'package:fitness_app/widgets/rate_container.dart';
import 'package:fitness_app/widgets/workout_widgets.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = 'ScreenTwo';
  ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> with SingleTickerProviderStateMixin{
  TabController? tabController;
  List<String> tabBarItems = [
    'All Type',
    'Full Body',
    'Upper',
    'Lower',
  ];
  int current = 0;
  double? changeLinePosition() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 95;
      case 2:
        return 192;
      case 3:
        return 263;
    }
  }

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/photo1.png'),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello, Jade',
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Ready to workout ?',
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/bell_icon.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              RateContainer(),
              SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    'Workout Programs',
                    style: theme.textTheme.bodyLarge,
                  )
                ],
              ),
              SizedBox(height: 30),
              TabBar(
                indicatorColor:Color(0xff363F72) ,
                unselectedLabelColor: Colors.grey,
                labelColor: Color(0xff363F72),
                labelStyle: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 18
                ),
                controller :tabController,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Body',
                ),
                Tab(
                  text: 'Upper',
                ),
                Tab(
                  text: 'Lower',
                ),
              ]
              ),
            SizedBox(height: 20),
            SizedBox(
              width: 700,
              height:350,
              child: TabBarView(
              controller: tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      WorkoutWidget(
                          days: '15 Days',
                          title: 'All Types',
                          description: 'Fitness',
                          image: 'assets/images/exercise2.png',
                          color: Colors.blueGrey
                      ),
                      SizedBox(height: 20),
                      WorkoutWidget(
                          days: '30 Days',
                          title: 'Cardio',
                          description: 'Burn calories',
                          image: 'assets/images/exercise1.png',
                          color: Colors.black12
                      ),
                      SizedBox(height: 20),
                      WorkoutWidget(
                          days: '10 Days',
                          title: 'Fitness',
                          description: 'Burn calories',
                          image: 'assets/images/exercise2.png',
                          color: Colors.indigo.withOpacity(0.4)
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      WorkoutWidget(
                          days: '7 Days',
                          title: 'Morning Yoga',
                          description: 'Mental focus.',
                          image: 'assets/images/exercise1.png',
                          color: Color(0xffBD94A2FF).withOpacity(0.6),
                      ),
                      SizedBox(height: 20),
                      WorkoutWidget(
                          days: '10 Days',
                          title: 'Plank Exercise',
                          description: 'stability.',
                          image: 'assets/images/exercise2.png',
                          color: Color(0xff7CD4FD).withOpacity(0.4)
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      WorkoutWidget(
                          days: '12 Days',
                          title: 'Stretching',
                          description: 'build muscles',
                          image: 'assets/images/exercise1.png',
                          color: Color(0xff027A48).withOpacity(0.5)
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      WorkoutWidget(
                          days: '30 Days',
                          title: 'Lower Body',
                          description: 'Fitness',
                          image: 'assets/images/exercise2.png',
                          color: Color(0xff363F72).withOpacity(0.6)
                      ),
                      SizedBox(height: 20),
                      WorkoutWidget(
                          days: '15 Days',
                          title: 'Yoga',
                          description: 'breathing',
                          image: 'assets/images/exercise1.png',
                          color: Colors.indigo.withOpacity(0.6)
                      ),
                    ],
                  ),
                ),

              ],
                ),
            )
            /*  Container(
                width: 350,
                height: 45,
                color: Color(0xffEAECF5),
                child: Stack(
                  children: [
                    SizedBox(
                      child: Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          child: Container(
                            width: 350,
                            height: 35,
                            color: AppTheme.whiteColor,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: tabBarItems.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        current = index;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: index == 0 ? 10 : 25, top: 7),
                                      child: Text(
                                        tabBarItems[index],
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                                color: current == index
                                                    ? Color(0xff3b4a88)
                                                    : Colors.black,
                                                fontWeight: current == index
                                                    ? FontWeight.w900
                                                    : FontWeight.w200),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      bottom: 0,
                      left: changeLinePosition(),
                      curve: Curves.fastOutSlowIn,
                      child: AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        margin: EdgeInsets.only(left: 5),
                        duration: Duration(milliseconds: 500),
                        width: 80,
                        height: MediaQuery.of(context).size.height * 0.008,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3b4a88)),
                      ),
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
    );
  }
}
