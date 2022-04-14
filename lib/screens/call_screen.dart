import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image(
              image: const AssetImage('assets/images/doc2.jpg'),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 60.0,
              left: 30.0,
              child: Material(
                type: MaterialType.circle,
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  customBorder: const CircleBorder(),
                  splashColor: Theme.of(context).primaryColorLight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white38,
                    ),
                    child: const Icon(CupertinoIcons.back),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60.0,
              right: 30.0,
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: const Image(
                    image: AssetImage(
                      'assets/images/profile.png',
                    ),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 150,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.37,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(20.0, 10.0),
                      blurRadius: 120.0,
                      spreadRadius: 100.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Dr. Bridgett',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      '16:32',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Material(
                          color: Colors.transparent,
                          type: MaterialType.circle,
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {},
                            splashColor: Theme.of(context).primaryColorLight,
                            child: Container(
                              alignment: Alignment.center,
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.transparent,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 50.0,
                                    spreadRadius: 0.0,
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.black45,
                              ),
                              child: const Icon(
                                CupertinoIcons.mic,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                        Material(
                          type: MaterialType.circle,
                          color: Colors.red,
                          child: InkWell(
                            hoverColor: Colors.red,
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            splashColor: Colors.redAccent,
                            customBorder: const CircleBorder(),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.red,
                              ),
                              child: const Icon(
                                CupertinoIcons.phone,
                                color: Colors.white,
                                size: 50.0,
                              ),
                            ),
                          ),
                        ),
                        Material(
                          type: MaterialType.circle,
                          color: Colors.transparent,
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {},
                            splashColor: Theme.of(context).primaryColorLight,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.transparent,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 50.0,
                                    spreadRadius: 0.0,
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.black45,
                              ),
                              child: const Icon(
                                CupertinoIcons.video_camera,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 100.0,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(20.0, 10.0),
                      blurRadius: 180.0,
                      spreadRadius: 50.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
