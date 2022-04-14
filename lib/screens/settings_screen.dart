import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_appointment/widgets/settings_tiles.dart';
import 'package:medical_appointment/widgets/user_profile_image.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: MediaQuery.of(context).size.width * 0.65,
            height: 150.0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150.0),
                    bottomRight: Radius.circular(150.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff09192C),
                    offset: Offset(20.0, 10.0),
                    blurRadius: 20.0,
                    spreadRadius: 50.0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: MediaQuery.of(context).size.width * 0.60,
            height: 150.0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150.0),
                    bottomLeft: Radius.circular(150.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff09192C),
                    offset: Offset(20.0, 10.0),
                    blurRadius: 20.0,
                    spreadRadius: 50.0,
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 28.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          'Settings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: ListTile(
                    leading: const UserProfileImage(
                      imageUrl: 'assets/images/profile.png',
                      size: 60.0,
                    ),
                    title: const Text(
                      'Francis Ola',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    subtitle: Text(
                      'Software Developer',
                      style: TextStyle(color: Colors.grey[400], fontSize: 17.0),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.forward,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 22.0,
                    right: 22.0,
                  ),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.7,
                  ),
                ),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'My Account',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const SettingsTiles(
                  title: 'Personal Data',
                  icon: CupertinoIcons.square_stack_3d_up,
                  trailing: CupertinoIcons.forward,
                ),
                const SettingsTiles(
                  title: 'Email & Payment',
                  icon: CupertinoIcons.mail,
                  trailing: CupertinoIcons.forward,
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 22.0,
                    right: 22.0,
                  ),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.7,
                  ),
                ),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Other Settings',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const SettingsTiles(
                  title: 'My Location',
                  icon: CupertinoIcons.location,
                  trailing: CupertinoIcons.forward,
                ),
                const SettingsTiles(
                  title: 'Schedule',
                  icon: FontAwesomeIcons.calendarCheck,
                  trailing: CupertinoIcons.forward,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
