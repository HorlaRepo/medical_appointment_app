import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_appointment/widgets/circle_category.dart';
import 'package:medical_appointment/widgets/doctors_near_you.dart';

import '../models/doctor_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> _doctors = [
    {
      'name': 'Mukesh',
      'rating': '4.8',
      'imageUrl': 'assets/images/doc1.jpg',
    },
    {
      'name': 'Bridgett',
      'rating': '4.5',
      'imageUrl': 'assets/images/doc2.jpg',
    },
    {
      'name': 'Ajao',
      'rating': '5.0',
      'imageUrl': 'assets/images/doc3.jpg',
    }
  ];

  final List<String> _icons = [
    'assets/images/kidney.png',
    'assets/images/heart.png',
    'assets/images/brain.png',
    'assets/images/ear.png',
  ];
  final List<String> _categories = [
    'Kidneys',
    'Heart',
    'Brain',
    'Ear',
  ];

  int _selectedIndex = 0;
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Hi, Hope! 👋',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Keep taking ',
                        style: TextStyle(fontSize: 35.0, letterSpacing: 1.0),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'care of your health ',
                        style: TextStyle(fontSize: 35.0, letterSpacing: 1.0),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 30.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: const Color(0xff172935),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: Colors.white,
                        ),
                        prefixIconColor: Colors.white,
                        iconColor: Colors.white,
                        hintText: 'Search anything here...',
                        contentPadding: EdgeInsets.all(20.0),
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(height: 35.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '😷 Categories',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 180.0,
                  alignment: Alignment.center,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(right: 40.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: CircleCategory(
                                imageUrl: _icons[index],
                                color1: _selectedIndex == index
                                    ? const Color(0xff0A53CE)
                                    : const Color(0xff0C1820),
                                color2: _selectedIndex == index
                                    ? const Color(0xff2239E7)
                                    : const Color(0xff142630),
                                title: _categories[index]),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '💉Doctors Near You',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'View more',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 300,
                alignment: Alignment.center,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _doctors.length,
                    itemBuilder: (context, index) {
                      return DoctorsNearYou(
                          rating: _doctors[index]['rating'].toString(),
                          imageUrl: _doctors[index]['imageUrl'].toString());
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
