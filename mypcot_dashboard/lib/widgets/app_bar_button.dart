import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class AppBarButton extends StatelessWidget {
  final String _iconPath;
  final String _iconLabel;
  final Color _labelColor;
  final FontWeight _labelWeight;

  const AppBarButton({
    super.key,
    required this._iconLabel,
    required this._iconPath,
    required this._labelColor, required this._labelWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18.0,
          width: 18.0,
          child: IconButton(
            isSelected: true,
            padding: EdgeInsets.all(0.0),
            icon: SvgPicture.asset(_iconPath),
            onPressed: () {},
          ),
        ),
        Text(
          _iconLabel,
          style: TextStyle(fontWeight: _labelWeight, color: _labelColor),
        ),
      ],
    );
  }
}
