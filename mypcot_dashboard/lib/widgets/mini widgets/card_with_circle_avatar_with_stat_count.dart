import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class CardWithCircleAvatarWithStatCount extends StatelessWidget {
  final Color _cardColor;
  final Color _textColor;
  final String _amount;
  final String _unitOfMeasure;
  final String _decription;
  final bool _flag;
  final Color _circleAvatarColor;

  final avatars = [
    "assets/images/man_2.jpg",
    "assets/images/woman_2.jpg",
    "assets/images/woman_3.jpg",
  ];

  CardWithCircleAvatarWithStatCount({
    super.key,
    required this._cardColor,
    required this._amount,
    required this._unitOfMeasure,
    required this._decription,
    required this._textColor,
    required this._flag,
    required this._circleAvatarColor,
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
            width: 140,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 10, top: 5),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "$_amount",
                      style: TextStyle(
                        fontSize: 25,
                        color: _textColor,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: _unitOfMeasure,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: _textColor,
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
            top: 55,
            left: 25,
            child: Row(
              children: [
                ...avatars.map((url) {
                  return Align(
                    widthFactor: 0.7,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: _circleAvatarColor,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(url),
                      ),
                    ),
                  );
                }),
                if (_flag)
                  Align(
                    widthFactor: 0.6,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add, size: 15),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
