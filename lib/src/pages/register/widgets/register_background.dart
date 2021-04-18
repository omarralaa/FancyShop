import 'package:flutter/material.dart';
import 'package:shop/src/core/values/constants.dart';

class RegisterBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Stack(
        children: [
          _buildUpperLeftEllipse(context),
          _buildLowerEllipse(context),
        ],
      ),
    );
  }

  Widget _buildUpperLeftEllipse(context) {
    return Positioned(
      left: -Constants.deviceWidth * 0.5,
      top: -Constants.deviceHeight * 0.23,
      child: Container(
        height: Constants.deviceHeight * 0.4,
        width: Constants.deviceWidth * 1,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(
            Radius.elliptical(
              Constants.deviceWidth * 0.75,
              Constants.deviceWidth * 0.6,
            ),
          ),
        ),
      ),
    );
  }

   Widget _buildLowerEllipse(context) {
    return Positioned(
      bottom: - Constants.deviceHeight * 0.31,
      left: - Constants.deviceWidth * 0.1,
      child: Container(
        height: Constants.deviceHeight * 0.4,
        width: Constants.deviceWidth * 1.2,
        
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(
            Radius.elliptical(
              Constants.deviceWidth * 1,
              Constants.deviceWidth * 0.6,
            ),
          ),
        ),
      ),
    );
  }
}
