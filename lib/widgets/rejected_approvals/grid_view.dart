import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';
import 'package:trim_spot_admin_side/screens/details_page.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/utils/page_route.dart';
import 'package:trim_spot_admin_side/utils/registration_details/categories.dart';

class RejectedApprovalGridView extends StatelessWidget {
  final List<QueryDocumentSnapshot<Object?>> shopList;
  const RejectedApprovalGridView({
    super.key,
    required this.shopList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.85,
          crossAxisCount: 5,
          mainAxisSpacing: mediaqueryHeight(0.03, context),
          crossAxisSpacing: mediaqueryHeight(0.035, context)),
      itemBuilder: (context, index) {
        final shop = shopList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(normalPageRoute(
                RegistrationDetailsScreen(VerificationState.rejected, shop)));
          },
          child: Container(
            decoration: BoxDecoration(
                color: tileColor,
                borderRadius: BorderRadius.circular(
                  12,
                ),
                border: Border.all(color: cyanColor, width: .7)),
            child: Column(
              children: [
                GridviewShopImage(shop: shop),
                GridViewShopName(shop: shop),
                GridViewShopLocation(shop: shop),
              ],
            ),
          ),
        );
      },
      itemCount: shopList.length,
    );
  }
}

class GridViewShopLocation extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const GridViewShopLocation({
    super.key,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      shop[SalonDocumentModel.locationName],
      textAlign: TextAlign.start,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontFamily: belleza,
          fontSize: mediaqueryWidth(0.013, context),
          fontWeight: FontWeight.w500,
          color: whiteColor),
    );
  }
}

class GridViewShopName extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const GridViewShopName({
    super.key,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      shop[SalonDocumentModel.shopName],
      textAlign: TextAlign.start,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontFamily: belleza,
          fontSize: mediaqueryWidth(0.015, context),
          fontWeight: FontWeight.w500,
          color: whiteColor),
    );
  }
}

class GridviewShopImage extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const GridviewShopImage({
    super.key,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaqueryWidth(0.13, context),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(shop[SalonDocumentModel.shopImage]))),
    );
  }
}
