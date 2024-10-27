import 'package:flutter/material.dart';
import 'package:interneepk_app/data/categories_model_data.dart';
import 'package:interneepk_app/utils/constants/colors.dart';
import 'package:interneepk_app/widgets/courses.dart';
import 'package:interneepk_app/widgets/popular_technologies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Internee.pk!",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Heading',
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Lets Kickstart Your Journey",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SubHeading',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search courses here....",
                          hintStyle: TextStyle(
                            fontFamily: 'Description',
                            color: Colors.grey.withOpacity(.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.grey.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // COURSES SECTION
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                      ),
                      itemCount: courses.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: courses[index].color,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: courses[index].icon,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              courses[index].title,
                              style: TextStyle(
                                fontFamily: 'Heading',
                                color: Colors.black.withOpacity(.7),
                                fontSize: 14,
                              ),
                            )
                          ],
                        );
                      }),
                    ),
                    // Recommend Courses
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Courses",
                          style: AppText.Heading,
                        ),
                        Text(
                          "View All",
                          style: AppText.TextButton,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Courses(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Internships",
                          style: AppText.Heading,
                        ),
                        Text(
                          "View All",
                          style: AppText.TextButton,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    PopularInternships(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
