import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/screens/approved_salons.dart';
import 'package:trim_spot_admin_side/screens/pending_approvals.dart';
import 'package:trim_spot_admin_side/screens/rejected_salons.dart';

List<Widget> tabScreens = [
  const PendingApprovalsScreen(),
  const ApprovedSalonsScreen(),
  const RejectedSalonsScreen()
];

  List<Widget> tabHeadings = [
    const Text("Pending approvals"),
    const Text("Approved salons"),
    const Text("Rejected salons"),
 
  ];


