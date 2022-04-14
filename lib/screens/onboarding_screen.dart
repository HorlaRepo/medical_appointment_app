import 'package:flutter/material.dart';
import 'package:medical_appointment/screens/login_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: PageView(
        controller: controller,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image(
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                  image: const AssetImage('assets/images/onboarding.png'),
                ),
                Positioned(
                  top: 80.0,
                  left: 30.0,
                  right: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const SlideEffect(
                              spacing: 10.0,
                              radius: 10.0,
                              dotWidth: 10.0,
                              dotHeight: 10.0,
                              paintStyle: PaintingStyle.stroke,
                              strokeWidth: 1.5,
                              dotColor: Colors.grey,
                              activeDotColor: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rotate,
                                    child: const LoginScreen()));
                          },
                          child: const Text(
                            'Skip',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: MediaQuery.of(context).size.height * 0.55,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Mediku Apps',
                              style: TextStyle(
                                  fontSize: 21.0, color: Color(0xff5199EC)),
                            ),
                            const SizedBox(height: 40.0),
                            const Text(
                              'Sick is easy,',
                              style: TextStyle(
                                  fontSize: 40.0, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 15.0),
                            const Text(
                              'but health is hard',
                              style: TextStyle(
                                  fontSize: 40.0, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 45.0),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginScreen();
                                  },
                                ));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 310,
                                height: 82,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        const Color(0xff085BDB),
                                        Theme.of(context).accentColor
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const Text(
                                  'Get Started',
                                  style: TextStyle(fontSize: 23.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
