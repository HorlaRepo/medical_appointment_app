import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_appointment/models/doctor_model.dart';
import 'package:medical_appointment/screens/call_screen.dart';
import 'package:page_transition/page_transition.dart';

class DoctorsNearYou extends StatelessWidget {
  final String rating;
  final String imageUrl;
  const DoctorsNearYou({
    Key? key,
    required this.rating,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black54,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: CallScreen()));
                    },
                    child: const Icon(
                      CupertinoIcons.phone,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              right: 10.0,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black54,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '⭐ $rating',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
