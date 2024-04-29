import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/data/data_provider/collection_reference.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/widgets/rejected_approvals/grid_view.dart';
import 'package:trim_spot_admin_side/widgets/rejected_approvals/list_tile.dart';
import 'package:trim_spot_admin_side/widgets/rejected_approvals/rejected_heading.dart';

class RejectedSalonsScreen extends StatelessWidget {
  const RejectedSalonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: StreamBuilder<QuerySnapshot>(
            stream: CollectionReferences()
                .shopCollectionReference()
                .where(SalonDocumentModel.isRejected, isEqualTo: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.data!.docs.isEmpty) {
                return Center(
                  child: myFont("no salons rejected",
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
                        RejectedApprovalHeading(
                          count: shopList.length,
                        ),
                        SizedBox(
                          height: mediaqueryHeight(0.02, context),
                        ),
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              if (constraints.maxWidth > 500) {
                                return RejectedApprovalGridView(
                                  shopList: shopList,
                                );
                              } else {
                                return RejectedApprovalListView(
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
