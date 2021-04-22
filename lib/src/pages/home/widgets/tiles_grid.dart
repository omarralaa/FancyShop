import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/home/widgets/left_lower_tile.dart';
import 'package:shop/src/pages/home/widgets/left_upper_tile.dart';
import 'package:shop/src/pages/home/widgets/right_tile.dart';
import 'package:shop/src/pages/home/widgets/upper_tile.dart';

class TilesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UpperTile(),
        Row(
          children: [
            _buildLeftTileColumn(),
            RightTile(),
          ],
        ),
      ],
    );
  }

  _buildLeftTileColumn() {
    return Container(
      height: Get.height * 0.4,
      width: Get.width * 0.5,
      child: Column(
        children: [
          LeftUpperTile(),
          LeftLowerTile(),
        ],
      ),
    );
  }
}
