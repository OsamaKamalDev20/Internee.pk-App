import 'package:flutter/material.dart';
import 'package:interneepk_app/data/courses_model_data.dart';

import '../utils/constants/colors.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: popular.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.sectionCard,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  popular[index].image,
                  height: 120,
                  width: 120,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popular[index].title,
                        style: TextStyle(
                          fontFamily: 'Heading',
                          fontSize: 20,
                          color: AppColors.primaryText,
                        ),
                      ),
                      Text(
                        popular[index].subtitle,
                        style: TextStyle(
                          fontFamily: "SubHeading",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.assignment,
                                color: Colors.green,
                                size: 24,
                              ),
                              SizedBox(width: 6),
                              Text(
                                "Courses left = ${popular[index].coursesleft}",
                                style: TextStyle(
                                  fontFamily: 'SubHeading',
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(.6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
