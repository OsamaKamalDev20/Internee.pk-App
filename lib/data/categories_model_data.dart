import 'package:flutter/material.dart';
import 'package:interneepk_app/models/categories_model.dart';
import 'package:interneepk_app/utils/constants/colors.dart';

List<Categories> courses = [
  Categories(
    color: AppColors.yellow,
    title: "Category",
    icon: Icon(
      Icons.category,
      size: 30,
      color: Colors.white,
    ),
  ),
  Categories(
    color: AppColors.green,
    title: "Classes",
    icon: Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
  ),
  Categories(
    color: AppColors.blue,
    title: "Free Courses",
    icon: Icon(
      Icons.assignment,
      color: Colors.white,
      size: 30,
    ),
  ),
  Categories(
    color: AppColors.red,
    title: "BookStore",
    icon: Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
  ),
  Categories(
    color: AppColors.pink,
    title: "Live Courses",
    icon: Icon(
      Icons.play_circle,
      color: Colors.white,
      size: 30,
    ),
  ),
  Categories(
    color: AppColors.purple,
    title: "Dashboard",
    icon: Icon(
      Icons.dashboard,
      color: Colors.white,
      size: 30,
    ),
  ),
];
