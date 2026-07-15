import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_circle_avatar.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/card_with_circle_avatar_with_stat_count.dart';
import 'package:mypcot_dashboard/widgets/mini%20widgets/image_with_action_button.dart';

class OrderActionStack extends StatelessWidget {
  const OrderActionStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.95,
          height: 250,
          child: Card(
            color: actionBlue,
            clipBehavior: Clip.none,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ImageWithActionButton(imagePath: "./assets/icons/orders_illust.svg",btnLabel: "Orders",btnColor: onActionOrange,),
                  // Container(width: 40,),
                ],
              ),
            ),
          ),
        ),
        Positioned(right: 50, top: -30, child: CardWithCircleAvatar(cardColor: onActionOrange, preNumText: 'You have ', number: 3, postNumText: ' active orders from',circleAvatarColor: circleAvatarBorder1,)),
        Positioned(right: 30, bottom: 60, child: CardWithCircleAvatarWithStatCount(cardColor: Colors.white,amount: "02",unitOfMeasure: "Pending",decription: "Orders from",textColor: primaryFont,flag: false,circleAvatarColor: circleAvatarBorder1,)),
      ],
    );
  }
}
