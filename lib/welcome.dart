import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/app_bar.dart';
import 'package:responsive_ui/widgets/flight_info.dart';
import 'package:responsive_ui/items/flight_info_styles.dart';
import 'package:responsive_ui/widgets/side_bar.dart';
import 'package:responsive_ui/widgets/side_menu.dart';
import 'package:responsive_ui/utils.dart';

class FlutterAirWelcome extends StatelessWidget {
  const FlutterAirWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterAirFlightInfoStyles flightInfoStyles =
        Utils.flightInfoStyles[Utils.getDeviceType(context)]
            as FlutterAirFlightInfoStyles;

    return Scaffold(
        backgroundColor: Colors.white,
        drawer: const Drawer(child: FlutterAirSideMenu()),
        appBar: const FlutterAirAppBar(),
        body: Row(children: [
          const FlutterAirSideBar(),
          Expanded(child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                  height: constraints.maxHeight,
                  constraints: BoxConstraints(
                      minHeight:
                          constraints.minHeight < flightInfoStyles.minHeight
                              ? flightInfoStyles.minHeight
                              : constraints.minHeight),
                  child: const Padding(
                      padding: EdgeInsets.all(50),
                      child: FlutterAirFlightInfo()),
                ));
          }))
        ]));
  }
}
