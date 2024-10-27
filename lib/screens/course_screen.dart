import 'package:flutter/material.dart';
import 'package:interneepk_app/utils/constants/colors.dart';
import 'package:interneepk_app/widgets/popular_courses.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Popular Courses",
                    style: AppText.Heading,
                  ),
                ),
                SizedBox(height: 10),
                PopularCourses(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
