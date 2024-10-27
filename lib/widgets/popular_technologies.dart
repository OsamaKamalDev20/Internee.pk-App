import 'package:flutter/material.dart';
import 'package:interneepk_app/data/internships_model_data.dart';

import '../utils/constants/colors.dart';

class PopularInternships extends StatefulWidget {
  const PopularInternships({super.key});

  @override
  State<PopularInternships> createState() => _PopularInternshipsState();
}

class _PopularInternshipsState extends State<PopularInternships> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: technologies.length,
      itemBuilder: (context, index) {
        return Container(
          height: 170,
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.only(bottom: 14),
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
                  technologies[index].image,
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
                        technologies[index].title,
                        style: TextStyle(
                          fontFamily: 'Heading',
                          fontSize: 20,
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Row(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            "4.7",
                            style: TextStyle(
                              fontFamily: 'Heading',
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Text(
                        "(${technologies[index].reviews} reviews)",
                        style: TextStyle(
                          fontFamily: 'SubHeading',
                          fontSize: 14,
                          color: Colors.grey.withOpacity(.6),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.play_circle,
                                color: Colors.red,
                                size: 24,
                              ),
                              SizedBox(width: 6),
                              Text(
                                "(${technologies[index].videos} videos)",
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
