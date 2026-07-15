import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class CardWithoutCircleAvatarWithStat extends StatelessWidget {
  final Color _cardColor;
  final Color _textColor;
  final String _amount;
  final String _unitOfMeasure;
  final String _decription;

  const CardWithoutCircleAvatarWithStat({
    super.key,
    required this._cardColor,
    required this._amount,
    required this._unitOfMeasure,
    required this._decription,
    required this._textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _cardColor,

      child: SizedBox(
        width: 120,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.start,
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
                textAlign: TextAlign.left,
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
    );
    ;
  }
}
