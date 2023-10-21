import 'package:fitness_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class WorkoutWidget extends StatelessWidget {
  String days;
  String title;
  String description;
  String image;
  Color color;
  WorkoutWidget({
    super.key,
    required this.days,
    required this.title,
    required this.description,
    required this.image,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(15),
      width: 350,
      height:174,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Color(0xffE4E7EC),
                  ),
                ),
                child: Text(days,
                style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(title,
                  style: theme.textTheme.bodyLarge ,
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(description,
                    style: theme.textTheme.bodyMedium ,
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.watch_later_outlined,
                  color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Text('30 mins',
                    style: theme.textTheme.bodySmall ,
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(image)
            ],
          )
        ],
      ),
    );
  }
}
