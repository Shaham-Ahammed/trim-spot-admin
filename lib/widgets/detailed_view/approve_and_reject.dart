import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/approve_button.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/reject_button.dart';

class ApproveAndRejectButtons extends StatelessWidget {
final  QueryDocumentSnapshot<Object?> shop;
  const ApproveAndRejectButtons({
    super.key, required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: mediaqueryWidth(0.07, context),
        ),
         ApproveButton(shop: shop,),
         RejectButton(shop: shop,),
        SizedBox(
          width: mediaqueryWidth(0.07, context),
        ),
      ],
    );
  }
}