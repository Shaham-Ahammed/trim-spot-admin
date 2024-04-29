import 'package:flutter/material.dart';

import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

 Column detailsHeadingAndDetails(
      BuildContext context, String heading, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myFont(heading,
            fontFamily: balooChettan,
            fontSize: mediaqueryHeight(0.026, context),
            fontWeight: FontWeight.w500,
            fontColor: greyColor),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: appBarColor),
          width: double.infinity,
          height: mediaqueryHeight(0.05, context),
          child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: myFont(content,
                  fontFamily: balooChettan,
                  fontSize: mediaqueryHeight(0.032, context),
                  fontWeight: FontWeight.w500,
                  fontColor: whiteColor)),
        ),
        SizedBox(
          height: mediaqueryHeight(0.02, context),
        )
      ],
    );
  }