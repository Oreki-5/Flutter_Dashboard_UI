import 'package:flutter/material.dart';

class CardWithCircleAvatar extends StatelessWidget {
  final Color _cardColor;
  final String _preNumText;
  final int _number;
  final String _postNumText;
  final Color _circleAvatarColor;

  final avatars = [
    "assets/images/man_1.jpg",
    "assets/images/woman_1.jpg",
    "assets/images/man_2.jpg",
  ];

  CardWithCircleAvatar({
    super.key,
    required this._cardColor,
    required this._preNumText,
    required this._number,
    required this._postNumText, required this._circleAvatarColor,
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
            width: 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: RichText(
                textAlign:TextAlign.center,
                text: TextSpan(
                  text: _preNumText,
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: "$_number",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(text: _postNumText),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
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
                        backgroundImage:AssetImage(url)
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
