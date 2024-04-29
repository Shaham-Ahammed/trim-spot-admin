import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';

import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

class ShopImage extends StatelessWidget {
  const ShopImage({
    super.key,
    required this.shop,
  });

  final QueryDocumentSnapshot<Object?> shop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myFont("Shop Image",
            fontFamily: balooChettan,
            fontSize: mediaqueryHeight(0.026, context),
            fontWeight: FontWeight.w500,
            fontColor: greyColor),
        Container(
          width: mediaqueryWidth(0.29, context),
          height: mediaqueryHeight(0.3, context),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(shop[SalonDocumentModel.shopImage]))),
        ),
      ],
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.shop,
  });

  final QueryDocumentSnapshot<Object?> shop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myFont("Profile Image",
            fontFamily: balooChettan,
            fontSize: mediaqueryHeight(0.026, context),
            fontWeight: FontWeight.w500,
            fontColor: greyColor),
        Container(
          width: mediaqueryWidth(0.29, context),
          height: mediaqueryHeight(0.3, context),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    shop[SalonDocumentModel.profileImage],
                  ))),
        )
      ],
    );
  }
}

class LicenseImage extends StatelessWidget {
  const LicenseImage({
    super.key,
    required this.shop,
  });

  final QueryDocumentSnapshot<Object?> shop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myFont("Shop License",
            fontFamily: balooChettan,
            fontSize: mediaqueryHeight(0.026, context),
            fontWeight: FontWeight.w500,
            fontColor: greyColor),
        Container(
          width: mediaqueryWidth(0.29, context),
          height: mediaqueryHeight(0.3, context),
          decoration: BoxDecoration(
              color: appBarColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(shop[SalonDocumentModel.licenseImage]))),
        ),
      ],
    );
  }
}
