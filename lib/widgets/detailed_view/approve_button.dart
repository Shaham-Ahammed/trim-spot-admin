import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trim_spot_admin_side/blocs/buttons_bloc/decision_making_buttons_bloc.dart';

import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

class ApproveButton extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const ApproveButton({
    super.key,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(90),
      color: cyanColor,
      child: InkWell(
        hoverColor: Colors.green.shade400,
        borderRadius: BorderRadius.circular(90),
        onTap: () {
          context
              .read<DecisionMakingButtonsBloc>()
              .add(ApproveButtonPressed(shop.id, context));
        },
        child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
            height: mediaqueryHeight(0.07, context),
            width: mediaqueryWidth(0.2, context),
            child: Center(
              child: myFont("Approve",
                  fontFamily: balooChettan,
                  fontSize: mediaqueryHeight(0.025, context),
                  fontWeight: FontWeight.w600,
                  fontColor: blackColor),
            )),
      ),
    );
  }
}
