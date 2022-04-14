import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<Icon> icons;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicatorColor: Colors.transparent,
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e.icon,
                    color: i == selectedIndex
                        ? Theme.of(context).accentColor
                        : Colors.grey[45],
                    size: 28.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
