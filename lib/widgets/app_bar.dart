// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_ui/items/app_bar_styles.dart';
import 'package:responsive_ui/widgets/header_title.dart';
import 'package:responsive_ui/utils.dart';

class FlutterAirAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FlutterAirAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    FlutterAirAppBarStyles appBarStyles = Utils
        .appBarStyles[Utils.getDeviceType(context)] as FlutterAirAppBarStyles;

    return AppBar(
      backgroundColor: appBarStyles.backgroundColor,
      elevation: 0,
      title: FlutterAirAppHeaderTitle(),
      leading: Builder(builder: (context) {
        return Material(
            color: appBarStyles.leadingIconBackgroundColor,
            child: InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Icon(Icons.menu,
                        color: appBarStyles.leadingIconForegroundColor))));
      }),
    );
  }
}
