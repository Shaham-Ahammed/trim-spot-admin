import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';


Future<dynamic> loadingIndicator(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(child: RegisterLoadingIndicator());
      },
    );
}


class RegisterLoadingIndicator extends StatelessWidget {
  const RegisterLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .2,
      child: Column(
        children: [
          SizedBox(
            height: mediaqueryHeight(0.36, context),
          ),
          const LoadingIndicator(
              indicatorType: Indicator.ballSpinFadeLoader,
              colors: [cyanColor, whiteColor],
              strokeWidth: 1,
              pathBackgroundColor: Colors.black)
        ],
      ),
    );
  }
}
