import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/logo.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

class AppBarLogin extends StatelessWidget {
  const AppBarLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed:()=> Navigator.pop(context), icon:  const Icon(Icons.arrow_back_ios)),
          AppLogo(size: mediaqueryHeight(0.04, context)),
          const Icon(Icons.gif_rounded,color: appBarColor,)
        ],
      ),
    );
  }
}
