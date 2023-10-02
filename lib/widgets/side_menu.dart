import 'package:flutter/material.dart';
import 'package:responsive_ui/items/side_bar_item.dart';
import 'package:responsive_ui/items/side_menu_styles.dart';
import 'package:responsive_ui/utils.dart';

class FlutterAirSideMenu extends StatelessWidget {
  const FlutterAirSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceType deviceBreakpoint = Utils.getDeviceType(context);
    FlutterAirSideMenuStyles menuStyles =
        Utils.sideMenuStyles[deviceBreakpoint] as FlutterAirSideMenuStyles;

    List<Widget> mainMenuItems = deviceBreakpoint == DeviceType.mobile
        ? getMenuItems(Utils.sideBarItems, menuStyles)
        : [];

    List<Widget> defaultMenuItems =
        getMenuItems(Utils.sideMenuItems, menuStyles);
    mainMenuItems.addAll(defaultMenuItems);

    return Container(
        color: menuStyles.backgroundColor,
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: mainMenuItems,
              ),
            ),
            Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: menuStyles.iconBgColor,
                    borderRadius: BorderRadius.circular(35)),
                child: const Icon(Icons.flight_takeoff,
                    color: Colors.white, size: 40)),
          ],
        ));
  }

  List<Widget> getMenuItems(
      List<FlutterAirSideBarItem> items, FlutterAirSideMenuStyles styles) {
    return List.generate(items.length, (index) {
      var menuItem = items[index];

      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(menuItem.icon,
                color: styles.labelColor, size: styles.iconSize),
            const SizedBox(width: 20),
            Text(menuItem.label,
                style: TextStyle(
                    color: styles.labelColor, fontSize: styles.labelSize))
          ],
        ),
      );
    });
  }
}
