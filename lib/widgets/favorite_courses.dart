import 'package:flutter/material.dart';
import 'package:interneepk_app/data/favorite_model_data.dart';
import 'package:interneepk_app/utils/constants/colors.dart';

class FavoriteCourses extends StatelessWidget {
  const FavoriteCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  favorites[index].image,
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        favorites[index].title,
                        style: TextStyle(
                          fontFamily: 'Heading',
                          fontSize: 20,
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.blue,
                            size: 24,
                          ),
                          SizedBox(width: 6),
                          Text(
                            "Total Videos = ${favorites[index].videos}",
                            style: TextStyle(
                              fontFamily: 'SubHeading',
                              fontSize: 14,
                              color: Colors.grey.withOpacity(.6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "56 likes",
                            style: TextStyle(
                              fontFamily: 'SubHeading',
                              fontSize: 14,
                              color: Colors.black,
                            ),
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
