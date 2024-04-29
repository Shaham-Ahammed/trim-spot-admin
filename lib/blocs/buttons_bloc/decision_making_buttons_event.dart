part of 'decision_making_buttons_bloc.dart';

@immutable
sealed class DecisionMakingButtonsEvent {}

final class ApproveButtonPressed extends DecisionMakingButtonsEvent {
  final String documentId;
  final BuildContext context;

  ApproveButtonPressed(this.documentId, this.context);

}

final class RejectButtonPressed extends DecisionMakingButtonsEvent {
  final String documentId;
  final BuildContext context;

  RejectButtonPressed(this.documentId, this.context);



}

final class RemoveButtonPressed extends DecisionMakingButtonsEvent {
   final String documentId;
  final BuildContext context;

  RemoveButtonPressed(this.documentId, this.context);



}
