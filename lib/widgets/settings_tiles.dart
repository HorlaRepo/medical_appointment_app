import 'package:flutter/material.dart';

class SettingsTiles extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData trailing;
  const SettingsTiles({
    Key? key,
    required this.title,
    required this.icon,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 10.0,
        bottom: 10.0,
      ),
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          height: 80,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: const LinearGradient(
                colors: [Color(0xff14242D), Color(0xff0B171F)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20.0),
        ),
        trailing: Icon(
          trailing,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}
