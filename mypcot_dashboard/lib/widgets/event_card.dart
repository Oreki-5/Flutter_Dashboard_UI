import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.95,
      height: 170,
      child: Card(
        // color: const Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Order Created",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: primaryFontLight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("New Order created with Order"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "9:00 pm",
                      style: TextStyle(color: eventOrange),
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: eventOrange),
                ],
              ),
              Container(
                alignment: AlignmentGeometry.directional(0, 0),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: eventOrange,
                ),
                child: SvgPicture.asset(
                  "assets/icons/orders_notif_illust.svg",
                  width: 70,
                  height: 70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
