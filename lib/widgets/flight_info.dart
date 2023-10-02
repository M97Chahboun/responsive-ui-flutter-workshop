import 'package:flutter/material.dart';
import 'package:responsive_ui/items/flight_info_styles.dart';
import 'package:responsive_ui/utils.dart';

class FlutterAirFlightInfo extends StatelessWidget {
  const FlutterAirFlightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterAirFlightInfoStyles flightInfoStyles =
        Utils.flightInfoStyles[Utils.getDeviceType(context)]
            as FlutterAirFlightInfoStyles;

    Column flightInfoColumn =
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Origin',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.labelSize)),
          Text('BOS',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.primaryValueSize))
        ]),
        Expanded(
          child: SizedBox(
            height: 120,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 30, right: 30),
                        height: flightInfoStyles.flightLineSize,
                        color: Utils.lightPurpleColor.withOpacity(0.3))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: flightInfoStyles.flightLineEndRadiusSize,
                      height: flightInfoStyles.flightLineEndRadiusSize,
                      margin: const EdgeInsets.only(top: 20, left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              flightInfoStyles.flightLineEndRadiusSize),
                          color: Colors.white,
                          border: Border.all(
                              color: Utils.lightPurpleColor.withOpacity(0.3),
                              width: flightInfoStyles.flightLineSize)),
                    )),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: flightInfoStyles.flightLineEndRadiusSize,
                      height: flightInfoStyles.flightLineEndRadiusSize,
                      margin: const EdgeInsets.only(top: 20, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              flightInfoStyles.flightLineEndRadiusSize),
                          color: Colors.white,
                          border: Border.all(
                              color: Utils.lightPurpleColor.withOpacity(0.3),
                              width: flightInfoStyles.flightLineSize)),
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                      origin: Offset.zero,
                      angle: 1.575,
                      child: Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(
                              bottom: 20, left: 25, top: 20),
                          child: Icon(Icons.flight,
                              color: Utils.mainThemeColor,
                              size: flightInfoStyles.flightIconSize))),
                ),
              ],
            ),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Destination',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.labelSize)),
          Text('STI',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.primaryValueSize))
        ]),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Gate',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.labelSize)),
          Row(
            mainAxisSize: MainAxisSize.min,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Icon(Icons.door_sliding,
                  color: Utils.secondaryThemeColor,
                  size: flightInfoStyles.secondaryIconSize),
              const SizedBox(width: 10),
              Text('G23',
                  style: TextStyle(
                      color: Utils.secondaryThemeColor,
                      fontSize: flightInfoStyles.secondaryValueSize))
            ],
          )
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Baggage Claim',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.labelSize)),
          Row(
            mainAxisSize: MainAxisSize.min,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Icon(Icons.work,
                  color: Utils.secondaryThemeColor,
                  size: flightInfoStyles.secondaryIconSize),
              const SizedBox(width: 10),
              Text('B5',
                  style: TextStyle(
                      color: Utils.secondaryThemeColor,
                      fontSize: flightInfoStyles.secondaryValueSize))
            ],
          )
        ])
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Departure Time',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.labelSize)),
          Text('5:24 AM',
              style: TextStyle(
                  color: Utils.darkThemeColor,
                  fontSize: flightInfoStyles.tertiaryValueSize))
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Arrival Time',
              style: TextStyle(
                  color: Utils.normalLabelColor,
                  fontSize: flightInfoStyles.labelSize)),
          Text('7:30 AM',
              style: TextStyle(
                  color: Utils.darkThemeColor,
                  fontSize: flightInfoStyles.tertiaryValueSize))
        ])
      ])
    ]);

    List<Widget> flightInfoWidgets = [
      Column(mainAxisSize: MainAxisSize.min, children: [
        Text('Flight',
            style: TextStyle(
                color: Utils.normalLabelColor,
                fontSize: flightInfoStyles.labelSize)),
        const Text('785',
            style: TextStyle(color: Utils.darkThemeColor, fontSize: 30))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
            padding: EdgeInsets.only(
                top: flightInfoStyles.seatBadgePaddingSize / 2,
                bottom: flightInfoStyles.seatBadgePaddingSize / 2,
                left: flightInfoStyles.seatBadgePaddingSize,
                right: flightInfoStyles.seatBadgePaddingSize),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Utils.lightPurpleColor),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(Icons.airline_seat_recline_normal,
                  color: Colors.white,
                  size: flightInfoStyles.seatBadgeIconSize),
              Text('23A',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: flightInfoStyles.seatBadgetLabelSize))
            ]))
      ])
    ];

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < Utils.twoColumnLayoutWidth) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: flightInfoWidgets),
              ...flightInfoColumn.children
            ]);
      }

      return Row(mainAxisSize: MainAxisSize.max, children: [
        Expanded(flex: 2, child: flightInfoColumn),
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: flightInfoWidgets))
      ]);
    });
  }
}
