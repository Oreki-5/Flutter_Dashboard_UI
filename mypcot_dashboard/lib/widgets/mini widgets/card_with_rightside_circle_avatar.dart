import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class CardWithRightsideCircleAvatar extends StatelessWidget {
  final Color _cardColor;
  final String _amount;
  final String _unitOfMeasure;
  final String _decription;
  final Color _circleAvatarColor;

  final avatars = ["assets/images/man_2.jpg", "assets/images/woman_2.jpg"];

  CardWithRightsideCircleAvatar({
    super.key,
    required this._cardColor,
    required this._amount,
    required this._unitOfMeasure,
    required this._decription, required this._circleAvatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _cardColor,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(height: 80),
          SizedBox(
            width: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right:30, top: 20),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "$_amount ",
                      style: TextStyle(
                        fontSize: 25,
                        color: primaryFont,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: _unitOfMeasure,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    _decription,
                    style: TextStyle(
                      fontSize: 15,
                      color: primaryFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: -30,
            child: Row(
              children: [
                ...avatars.map((url) {
                  return Align(
                    widthFactor: 0.7,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: _circleAvatarColor,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(url),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
