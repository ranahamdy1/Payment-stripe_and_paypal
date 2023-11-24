part of 'stripe_cubit.dart';

@immutable
abstract class StripeState {}

class StripeInitial extends StripeState {}
class StripeLoading extends StripeState {}
class StripeSuccess extends StripeState {}
class StripeFailure extends StripeState {
  final String errorMessage;
  StripeFailure(this.errorMessage);
}
