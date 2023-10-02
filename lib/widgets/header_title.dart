import 'package:flutter/material.dart';
import 'package:responsive_ui/items/app_bar_styles.dart';
import 'package:responsive_ui/utils.dart';

class FlutterAirAppHeaderTitle extends StatelessWidget {
  const FlutterAirAppHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterAirAppBarStyles appBarStyles = Utils
        .appBarStyles[Utils.getDeviceType(context)] as FlutterAirAppBarStyles;

    return Row(children: [
      Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Utils.secondaryThemeColor,
              borderRadius: BorderRadius.circular(20)),
          child: Icon(Icons.flight_takeoff,
              color: appBarStyles.titleIconColor, size: 20)),
      const SizedBox(width: 10),
      Text('Welcome',
          style: TextStyle(fontSize: 18, color: appBarStyles.titleColor))
    ]);
  }
}
