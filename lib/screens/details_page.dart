import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';

import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/utils/registration_details/categories.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/approve_and_reject.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/approve_button.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/heading_and_details.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/images.dart';
import 'package:trim_spot_admin_side/widgets/detailed_view/remove_button.dart';
import 'package:trim_spot_admin_side/widgets/login/appbar.dart';

class RegistrationDetailsScreen extends StatelessWidget {
  final VerificationState shopState;
  final QueryDocumentSnapshot<Object?> shop;
  const RegistrationDetailsScreen(this.shopState, this.shop, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, mediaqueryHeight(0.1, context)),
          child: const AppBarLogin()),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mediaqueryHeight(0.04, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              detailsHeadingAndDetails(
                  context, "Name", shop[SalonDocumentModel.name]),
              detailsHeadingAndDetails(
                  context, "Phone", shop[SalonDocumentModel.phone]),
              detailsHeadingAndDetails(
                  context, "Email", shop[SalonDocumentModel.email]),
              detailsHeadingAndDetails(
                  context, "Shop Name", shop[SalonDocumentModel.shopName]),
              detailsHeadingAndDetails(context, "Shop Location",
                  shop[SalonDocumentModel.locationName]),
              SizedBox(
                height: mediaqueryHeight(0.02, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LicenseImage(shop: shop),
                  ProfileImage(shop: shop),
                  ShopImage(shop: shop)
                ],
              ),
              SizedBox(
                height: mediaqueryHeight(0.03, context),
              ),
              switch (shopState) {
                VerificationState.pending =>
                  ApproveAndRejectButtons(shop: shop),
                VerificationState.rejected => Center(
                    child: ApproveButton(shop: shop),
                  ),
                VerificationState.approved => RemoveButton(shop: shop)
              }
            ],
          ),
        ),
      )),
    );
  }
}
