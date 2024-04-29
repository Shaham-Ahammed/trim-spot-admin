import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';
import 'package:trim_spot_admin_side/screens/details_page.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/utils/page_route.dart';
import 'package:trim_spot_admin_side/utils/registration_details/categories.dart';

class ListviewPendingApproval extends StatelessWidget {
  final List<QueryDocumentSnapshot<Object?>> shopList;
  const ListviewPendingApproval({
    super.key,
    required this.shopList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final shop = shopList[index];
          return ListTile(
            onTap: () => Navigator.of(context).push(normalPageRoute(
                RegistrationDetailsScreen(VerificationState.pending, shop))),
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: .67, color: cyanColor),
                borderRadius: BorderRadius.circular(12)),
            tileColor: tileColor,
            leading: ShopImage(shop: shop),
            title: shopNameListTile(context, shop),
            subtitle: shopLocationListTile(context, shop),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: mediaqueryHeight(0.02, context),
          );
        },
        itemCount: shopList.length);
  }

  shopLocationListTile(
      BuildContext context, QueryDocumentSnapshot<Object?> shop) {
    return myFont(shop[SalonDocumentModel.locationName],
        fontFamily: belleza,
        fontSize: mediaqueryHeight(0.02, context),
        fontWeight: FontWeight.w500,
        fontColor: whiteColor);
  }

  shopNameListTile(BuildContext context, QueryDocumentSnapshot<Object?> shop) {
    return myFont(shop[SalonDocumentModel.shopName],
        fontFamily: belleza,
        fontSize: mediaqueryHeight(0.023, context),
        fontWeight: FontWeight.w500,
        fontColor: whiteColor);
  }
}

class ShopImage extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const ShopImage({
    super.key,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(shop[SalonDocumentModel.shopImage]),
      backgroundColor: cyanColor,
    );
  }
}
