import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_circle_avatar.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_circle_avatar_with_stat_count.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_rightside_circle_avatar.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_trend_graph.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_without_circle_avatar_with_stat.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/image_with_action_button.dart';

class SubscriptionsActionStack extends StatelessWidget {
  const SubscriptionsActionStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.95,
          height: 250,
          child: Card(
            color: actionYellow,
            clipBehavior: Clip.none,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ImageWithActionButton(imagePath: "assets/icons/subscription_illust.svg",btnLabel: "Subscriptions",btnColor: onActionBlue,),
                  // Container(width: 40,),
                ],
              ),
            ),
          ),
        ),
        Positioned(right: 30, top: 80, child: CardWithoutCircleAvatarWithStat(cardColor: Colors.white,amount: "10 ",unitOfMeasure: "Active",decription: "Subscriptions",textColor: primaryFont,)),
        Positioned(right: 15, bottom: 10, child: CardWithoutCircleAvatarWithStat(cardColor: Colors.white,amount: "119 ",unitOfMeasure: "pending",decription: "Deliveries",textColor: primaryFont,)),
        Positioned(right: 40, top: -10, child: CardWithCircleAvatarWithStatCount(cardColor: onActionBlue, amount: '03 ', unitOfMeasure: "deliveries",decription:'',textColor: Colors.white,flag: false,circleAvatarColor: circleAvatarBorder2,)),
      ],
    );
  }
}
