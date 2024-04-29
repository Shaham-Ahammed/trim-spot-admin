// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trim_spot_admin_side/data/data_provider/collection_reference.dart';
import 'package:trim_spot_admin_side/data/repository/document_model.dart';

part 'decision_making_buttons_event.dart';
part 'decision_making_buttons_state.dart';

class DecisionMakingButtonsBloc
    extends Bloc<DecisionMakingButtonsEvent, DecisionMakingButtonsState> {
  DecisionMakingButtonsBloc() : super(DecisionMakingButtonsInitial()) {
    on<RejectButtonPressed>(_rejectButtonPressed);
    on<RemoveButtonPressed>(_removeButtonPressed);
    on<ApproveButtonPressed>(_approveButtonPressed);
  }
  _rejectButtonPressed(RejectButtonPressed event,
      Emitter<DecisionMakingButtonsState> emit) async {
    DocumentReference docRef =
        CollectionReferences().shopCollectionReference().doc(event.documentId);
    try {
      await docRef.update({SalonDocumentModel.isRejected: true});
    } catch (e) {
      print("Error while updating $e");
    }
    Navigator.pop(event.context);
  }

  _removeButtonPressed(RemoveButtonPressed event,
      Emitter<DecisionMakingButtonsState> emit) async {
    DocumentReference docRef =
        CollectionReferences().shopCollectionReference().doc(event.documentId);
    try {
      await docRef.update({
        SalonDocumentModel.isApproved: false,
        SalonDocumentModel.isRejected: true
      });
    } catch (e) {
      print("Error while updating $e");
    }
    Navigator.pop(event.context);
  }

  _approveButtonPressed(ApproveButtonPressed event,
      Emitter<DecisionMakingButtonsState> emit) async {
    DocumentReference docRef =
        CollectionReferences().shopCollectionReference().doc(event.documentId);
    try {
      await docRef.update({
        SalonDocumentModel.isApproved: true,
        SalonDocumentModel.isRejected: false
      });
    } catch (e) {
      print("Error while updating $e");
    }
    Navigator.pop(event.context);
  }
}
