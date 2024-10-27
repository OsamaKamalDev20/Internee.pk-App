import 'package:flutter/material.dart';

import '../data/course_catagories_data.dart';
import '../utils/constants/colors.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (MediaQuery.of(context).size.height) / (4 * 240),
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
        ),
        itemCount: coursecategory.length,
        itemBuilder: ((context, index) {
          return Container(
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
            child: Padding(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Container(
                      child: Image.asset(
                        coursecategory[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      coursecategory[index].title,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'SubHeading',
                        fontSize: 14,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Apply",
                      style: TextStyle(
                        fontFamily: "SubHeading",
                        color: AppColors.sectionCard,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
