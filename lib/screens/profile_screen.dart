import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Profile Screen",
                    style: AppText.Heading,
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: AppColors.secondaryColor,
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: AppColors.sectionCard,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpeg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "User Information",
                  style: AppText.SectionHeading,
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.red,
                      size: 34,
                    ),
                  ),
                  title: Text(
                    "Osama Kamal",
                    style: TextStyle(
                      fontFamily: 'Heading',
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontFamily: 'SubHeading',
                      color: AppColors.secondaryText,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondaryText,
                    size: 14,
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 34,
                    ),
                  ),
                  title: Text(
                    "Karachi",
                    style: TextStyle(
                      fontFamily: 'Heading',
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "Pakistan",
                    style: TextStyle(
                      fontFamily: 'SubHeading',
                      color: AppColors.secondaryText,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondaryText,
                    size: 14,
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.phone,
                      color: Colors.amber,
                      size: 34,
                    ),
                  ),
                  title: Text(
                    "Mobile Number",
                    style: TextStyle(
                      fontFamily: 'Heading',
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "0331-2265764",
                    style: TextStyle(
                      fontFamily: 'SubHeading',
                      color: AppColors.secondaryText,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondaryText,
                    size: 14,
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.email,
                      color: Colors.green,
                      size: 34,
                    ),
                  ),
                  title: Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: 'Heading',
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "osamakamal650@gmail.com",
                    style: TextStyle(
                      fontFamily: 'SubHeading',
                      color: AppColors.secondaryText,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
