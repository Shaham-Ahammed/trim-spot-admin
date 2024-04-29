import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/data/data_provider/collection_reference.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/widgets/pending_approval/gridview.dart';
import 'package:trim_spot_admin_side/widgets/pending_approval/heading_text.dart';
import 'package:trim_spot_admin_side/widgets/pending_approval/list_tile.dart';

class PendingApprovalsScreen extends StatelessWidget {
  const PendingApprovalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: StreamBuilder<QuerySnapshot>(
            stream: CollectionReferences()
                .shopCollectionReference()
                .where(SalonDocumentModel.isApproved, isEqualTo: false).
                where(SalonDocumentModel.isRejected,isEqualTo: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.data!.docs.isEmpty) {
                return Center(
                  child: myFont("no pending requests",
                      fontFamily: balooChettan,
                      fontSize: mediaqueryHeight(0.045, context),
                      fontWeight: FontWeight.w500,
                      fontColor: whiteColor),
                );
              } else if (snapshot.hasData) {
                final shopList = snapshot.data!.docs;
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: mediaqueryHeight(0.02, context),
                        ),
                        PendingApprovalText(
                          count: shopList.length,
                        ),
                        SizedBox(
                          height: mediaqueryHeight(0.02, context),
                        ),
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              if (constraints.maxWidth > 500) {
                                return GridviewPendingAprroval(
                                  shopList: shopList,
                                );
                              } else {
                                return ListviewPendingApproval(
                                  shopList: shopList,
                                );
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Container();
              }
            }));
  }
}
