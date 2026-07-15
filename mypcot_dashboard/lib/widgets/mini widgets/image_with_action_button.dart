import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_dashboard/color_consts.dart';

class ImageWithActionButton extends StatelessWidget {
  final String _imagePath;
  final String _btnLabel;
  final Color _btnColor;
  const ImageWithActionButton({
    super.key,
    required this._btnLabel,
    required this._imagePath,
    required this._btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Container(
              alignment: AlignmentGeometry.directional(0, 0),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(_imagePath, fit: BoxFit.fill),
            ),
          ],
        ),

        FilledButton(
          onPressed: () {},
          child: Text(_btnLabel),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(_btnColor),
          ),
        ),
      ],
    );
  }
}
