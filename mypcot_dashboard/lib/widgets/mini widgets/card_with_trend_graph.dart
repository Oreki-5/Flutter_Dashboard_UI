import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class CardWithTrendGraph extends StatelessWidget {
  final Color _cardColor;
  final double _percent;
  final String _unitOfMeasure;
  final String _decription;

  final avatars = ["assets/images/man_2.jpg", "assets/images/woman_2.jpg"];

  CardWithTrendGraph({
    super.key,
    required this._cardColor,
    required this._percent,
    required this._unitOfMeasure,
    required this._decription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _cardColor,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(height: 70),
          SizedBox(
            width: 120,

            child: Image.asset(
              "assets/images/trendGraph.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
              child: Text(
                "$_percent%",
                style: TextStyle(
                  fontSize: 30,
                  color: primaryFont,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
