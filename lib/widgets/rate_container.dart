import 'package:flutter/material.dart';

class RateContainer extends StatelessWidget {
  RateContainer({super.key,});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: 350,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xffF8F9FC),
        borderRadius: BorderRadius.circular(10),
      ),
        child :Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/heart.png'),
                      SizedBox(width: 7),
                      Text('Heart Rate',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700
                        ),),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('81',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700
                        ),),
                      SizedBox(width: 7),
                      Text('BPM',
                        style: theme.textTheme.bodySmall,),
                    ],
                  )
                ],
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 0.2,
                width: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/list.png'),
                      SizedBox(width: 7),
                      Text('To-Do',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700
                        ),),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('32,5',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700
                        ),),
                      SizedBox(width: 7),
                      Text('%',
                        style: theme.textTheme.bodySmall,),
                    ],
                  )
                ],
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 0.2,
                width: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/cal.png'),
                      SizedBox(width: 7),
                      Text('Calo',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700
                        ),),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('1000',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700
                        ),),
                      SizedBox(width: 7),
                      Text('Cal',
                        style: theme.textTheme.bodySmall,),
                    ],
                  )
                ],
              ),

            ],
          ),

        )
    );
  }
}
