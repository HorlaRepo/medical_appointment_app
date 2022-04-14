import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_appointment/screens/nav_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  void _submitForm() async {
    print('Submitting form');
    if (_formKey.currentState!.validate()) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft, child: NavScreen()));
    } else {
      print('Validation failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.43,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image(
                    image: const AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                  Positioned(
                    top: 160,
                    left: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Care your',
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'health,',
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'care your life',
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                        ),
                        SizedBox(height: 25.0),
                        Text(
                          'Join Membership',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff5199EC),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 23.0,
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xff172935),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (!RegExp(
                                        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                    .hasMatch(value.toString())) {
                                  return 'This is not a valid email';
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    FontAwesomeIcons.circleCheck,
                                    color: Colors.white,
                                  ),
                                  iconColor: Theme.of(context).accentColor,
                                  hintText: 'Email address',
                                  contentPadding: const EdgeInsets.all(20.0),
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(height: 25.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xff172935),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return 'Invalid password';
                                }
                              },
                              obscureText: _isObscure,
                              keyboardType: TextInputType.visiblePassword,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  iconColor: Theme.of(context).accentColor,
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                    child: Icon(
                                      _isObscure
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintText: 'Password',
                                  contentPadding: const EdgeInsets.all(20.0),
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(height: 25.0),
                          GestureDetector(
                            onTap: () {
                              _submitForm();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              height: 70,
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
                                'Let\'s Get Started',
                                style: TextStyle(fontSize: 23.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Sign Up',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff5199EC)),
                        ),
                      ],
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
