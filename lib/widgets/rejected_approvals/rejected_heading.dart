import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

class RejectedApprovalHeading extends StatelessWidget {
  final int count;
  const RejectedApprovalHeading({
    super.key, required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: myFont("Rejected approvals - $count",
            fontFamily: b612,
            textalign: TextAlign.center,
            fontSize: mediaqueryHeight(0.025, context),
            fontWeight: FontWeight.w500,
            fontColor: greyColor2));
  }
}