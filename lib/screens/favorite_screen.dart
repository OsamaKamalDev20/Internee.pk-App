import 'package:flutter/material.dart';
import 'package:interneepk_app/widgets/favorite_courses.dart';

import '../utils/constants/colors.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
                    "Favorite Courses",
                    style: AppText.Heading,
                  ),
                ),
                SizedBox(height: 10),
                FavoriteCourses(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
