import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_circle_avatar.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_circle_avatar_with_stat_count.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_rightside_circle_avatar.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_trend_graph.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/image_with_action_button.dart';

class CustomerActionStack extends StatelessWidget {
  const CustomerActionStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.95,
          height: 250,
          child: Card(
            color: actionGreen,
            clipBehavior: Clip.none,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ImageWithActionButton(imagePath: "./assets/icons/customers_thumbnail.svg",btnLabel: "View Customers",btnColor: onActionPink,),
                  // Container(width: 40,),
                ],
              ),
            ),
          ),
        ),
        Positioned(right: 15, top: 70, child: CardWithTrendGraph(cardColor: Colors.white,percent: 1.8,unitOfMeasure: "Pending",decription: "Orders from",)),
        Positioned(right: 45, bottom: 10, child: CardWithRightsideCircleAvatar(cardColor: Colors.white,amount: "10",unitOfMeasure: "Active",decription: "Customers",circleAvatarColor:circleAvatarBorder3 ,)),
        Positioned(right: 40, top: -20, child: CardWithCircleAvatarWithStatCount(cardColor: onActionPink, amount: '15 ', unitOfMeasure: "New Customers",decription:'',textColor: Colors.white,flag: true,circleAvatarColor: circleAvatarBorder3)),
      ],
    );
  }
}
