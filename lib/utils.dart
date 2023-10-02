// Utility Classes

import 'package:flutter/material.dart';
import 'package:responsive_ui/items/app_bar_styles.dart';
import 'package:responsive_ui/items/side_bar_item.dart';
import 'package:responsive_ui/items/side_bar_item_styles.dart';
import 'package:responsive_ui/items/side_menu_styles.dart';

import 'items/flight_info_styles.dart';

enum DeviceType { mobile, tablet, laptop }

class Utils {
  static const int mobileMaxWidth = 480;
  static const int tabletMaxWidth = 768;
  static const int laptopMaxWidth = 1024;

  static const int twoColumnLayoutWidth = 600;

  static const Color mainThemeColor = Color(0xFF5C1896);
  static const Color secondaryThemeColor = Color(0xFFA677FF);
  static const Color darkThemeColor = Color(0xFF44146E);
  static const Color normalLabelColor = Color(0xFF6C6C6C);
  static const Color lightPurpleColor = Color(0xFFC5ABF6);

  static Map<DeviceType, FlutterAirAppBarStyles> appBarStyles = {
    DeviceType.mobile: FlutterAirAppBarStyles(
        leadingIconBackgroundColor: Colors.transparent,
        leadingIconForegroundColor: Utils.mainThemeColor,
        backgroundColor: Colors.transparent,
        titleColor: Utils.mainThemeColor,
        titleIconColor: Colors.white),
    DeviceType.tablet: FlutterAirAppBarStyles(
      leadingIconBackgroundColor: Utils.darkThemeColor,
      leadingIconForegroundColor: Colors.white,
      backgroundColor: Utils.mainThemeColor,
      titleColor: Colors.white,
      titleIconColor: Utils.mainThemeColor,
    ),
    DeviceType.laptop: FlutterAirAppBarStyles(
      leadingIconBackgroundColor: Utils.darkThemeColor,
      leadingIconForegroundColor: Colors.white,
      backgroundColor: Utils.mainThemeColor,
      titleColor: Colors.white,
      titleIconColor: Utils.mainThemeColor,
    )
  };

  static Map<DeviceType, FlutterAirFlightInfoStyles> flightInfoStyles = {
    DeviceType.mobile: FlutterAirFlightInfoStyles(
      labelSize: 15,
      primaryValueSize: 60,
      secondaryValueSize: 40,
      tertiaryValueSize: 30,
      flightIconSize: 50,
      seatBadgePaddingSize: 15,
      seatBadgeIconSize: 25,
      seatBadgetLabelSize: 25,
      flightLineSize: 3,
      flightLineEndRadiusSize: 10,
      secondaryIconSize: 30,
      minHeight: 500,
    ),
    DeviceType.tablet: FlutterAirFlightInfoStyles(
        labelSize: 20,
        primaryValueSize: 60,
        secondaryValueSize: 50,
        tertiaryValueSize: 30,
        flightIconSize: 60,
        seatBadgePaddingSize: 20,
        seatBadgeIconSize: 30,
        seatBadgetLabelSize: 30,
        flightLineSize: 4,
        flightLineEndRadiusSize: 15,
        secondaryIconSize: 30,
        minHeight: 500),
    DeviceType.laptop: FlutterAirFlightInfoStyles(
        labelSize: 20,
        primaryValueSize: 70,
        secondaryValueSize: 60,
        tertiaryValueSize: 40,
        flightIconSize: 60,
        seatBadgePaddingSize: 30,
        seatBadgeIconSize: 35,
        seatBadgetLabelSize: 35,
        flightLineSize: 4,
        flightLineEndRadiusSize: 15,
        secondaryIconSize: 30,
        minHeight: 500)
  };

  static Map<DeviceType, FlutterAirSideMenuStyles> sideMenuStyles = {
    DeviceType.mobile: FlutterAirSideMenuStyles(
        backgroundColor: Utils.secondaryThemeColor,
        labelColor: Colors.white,
        iconSize: 20,
        labelSize: 20,
        iconBgColor: Utils.mainThemeColor),
    DeviceType.tablet: FlutterAirSideMenuStyles(
        backgroundColor: Colors.white,
        labelColor: Utils.darkThemeColor,
        iconSize: 30,
        labelSize: 20,
        iconBgColor: Utils.secondaryThemeColor),
    DeviceType.laptop: FlutterAirSideMenuStyles(
        backgroundColor: Colors.white,
        labelColor: Utils.darkThemeColor,
        iconSize: 30,
        labelSize: 20,
        iconBgColor: Utils.secondaryThemeColor)
  };

  static DeviceType getDeviceType(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    DeviceType bk = DeviceType.mobile;

    if (data.size.width > Utils.mobileMaxWidth &&
        data.size.width <= Utils.tabletMaxWidth) {
      bk = DeviceType.tablet;
    } else if (data.size.width > Utils.tabletMaxWidth) {
      bk = DeviceType.laptop;
    }

    return bk;
  }

  static List<FlutterAirSideBarItem> sideBarItems = [
    FlutterAirSideBarItem(icon: Icons.home, label: 'Home'),
    FlutterAirSideBarItem(icon: Icons.face, label: 'Passengers'),
    FlutterAirSideBarItem(icon: Icons.airplane_ticket, label: 'Flight Info'),
    FlutterAirSideBarItem(
        icon: Icons.airline_seat_recline_normal, label: 'Reserve Seat')
  ];

  static List<FlutterAirSideBarItem> sideMenuItems = [
    FlutterAirSideBarItem(icon: Icons.settings, label: 'Settings'),
    FlutterAirSideBarItem(icon: Icons.qr_code, label: 'Boarding Pass')
  ];

  static Map<DeviceType, FlutterAirSideBarItemStyles> sideBarItemStyles = {
    DeviceType.mobile: FlutterAirSideBarItemStyles(
        iconSize: 30, labelSize: 15, minHeight: 200),
    DeviceType.tablet: FlutterAirSideBarItemStyles(
        iconSize: 30, labelSize: 15, minHeight: 200),
    DeviceType.laptop:
        FlutterAirSideBarItemStyles(iconSize: 25, labelSize: 15, minHeight: 200)
  };
}
