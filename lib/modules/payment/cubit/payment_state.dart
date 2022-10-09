part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentSuccess extends PaymentState {}

class PaymentError extends PaymentState {
  final String error;

  PaymentError(this.error);
}

class PaymentGetOrderIdSuccess extends PaymentState {}

class PaymentGetOrderIdError extends PaymentState {
  final String error;

  PaymentGetOrderIdError(this.error);
}

class PaymentCardRequestTokenSuccess extends PaymentState {}

class PaymentCardRequestTokenError extends PaymentState {
  final String error;

  PaymentCardRequestTokenError(this.error);
}

class PaymentKioskRequestTokenSuccess extends PaymentState {}

class PaymentKioskRequestTokenError extends PaymentState {
  final String error;

  PaymentKioskRequestTokenError(this.error);
}

class PaymentRefCodeSuccess extends PaymentState {}

class PaymentRefCodeError extends PaymentState {
  final String error;

  PaymentRefCodeError(this.error);
}
