import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment_project/models/first_token.dart';
import 'package:payment_project/shared/components/constants.dart';
import 'package:payment_project/shared/network/dio_helper.dart';

import '../../../models/final_token.dart';
import '../../../models/order_id.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  static PaymentCubit get(context) => BlocProvider.of(context);
  FirstToken? firstTokenModel;
  OrderIdModel? orderIdModel;
  FinalToken? finalTokenModel;
  final TextEditingController firstNameCon = TextEditingController();
  final TextEditingController lastNameCon = TextEditingController();
  final TextEditingController phoneCon = TextEditingController();
  final TextEditingController priseCon = TextEditingController();
  final TextEditingController emailCon = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> getFirstToken({
    required String price,
    lastName,
    firstName,
    phone,
    email,
  }) async {
    await DioHelper.postData(
      url: AppConstants.firstTokenUrl,
      data: {"api_key": AppConstants.paymentApiKey},
    ).then(
      (value) {
        payMobToken = value.data["token"];
        emit(PaymentSuccess());
      },
    ).catchError(
      (error) {
        emit(PaymentError(error.toString()));
        print(error.toString());
      },
    );
  }

  Future<void> getOrderId({required String price}) async {
    await DioHelper.postData(
      url: AppConstants.orderIdUrl,
      data: {
        "auth_token": payMobToken,
        "delivery_needed": "false",
        "amount_cents": price,
        "items": [],
      },
    ).then(
      (value) {
        payMobOrderId = value.data["id"].toString();
        emit(PaymentGetOrderIdSuccess());
      },
    ).catchError(
      (error) {
        emit(PaymentGetOrderIdError(error.toString()));
        print(error.toString());
      },
    );
  }

  Future<void> getFinalCardToken({
    required String price,
    lastName,
    firstName,
    phone,
    email,
  }) async {
    await DioHelper.postData(url: AppConstants.finalTokenUrl, data: {
      "auth_token": payMobToken,
      "amount_cents": price,
      "expiration": 3600,
      "order_id": payMobOrderId,
      "billing_data": {
        "apartment": "Na",
        "email": email,
        "floor": "Na",
        "first_name": firstName,
        "street": "Na",
        "building": "Na",
        "phone_number": phone,
        "shipping_method": "Na",
        "postal_code": "Na",
        "city": "Na",
        "country": "Na",
        "last_name": lastName,
        "state": "Na"
      },
      "currency": "EGP",
      "integration_id": AppConstants.integrationCardId,
      "lock_order_when_paid": "false"
    }).then(
      (value) {
        finalCardToken = value.data["token"];
        emit(PaymentCardRequestTokenSuccess());
      },
    ).catchError(
      (error) {
        emit(PaymentKioskRequestTokenError(error.toString()));
        print(error.toString());
      },
    );
  }

  Future<void> getFinalKioskToken({
    required String price,
    lastName,
    firstName,
    phone,
    email,
  }) async {
    await DioHelper.postData(url: AppConstants.finalTokenUrl, data: {
      "auth_token": payMobToken,
      "amount_cents": price,
      "expiration": 3600,
      "order_id": payMobOrderId,
      "billing_data": {
        "apartment": "Na",
        "email": email,
        "floor": "Na",
        "first_name": firstName,
        "street": "Na",
        "building": "Na",
        "phone_number": phone,
        "shipping_method": "Na",
        "postal_code": "Na",
        "city": "Na",
        "country": "Na",
        "last_name": lastName,
        "state": "Na"
      },
      "currency": "EGP",
      "integration_id": AppConstants.integrationKioskId,
      "lock_order_when_paid": "false"
    }).then(
      (value) {
        finalKioskToken = value.data["token"];
        emit(PaymentKioskRequestTokenSuccess());
      },
    ).catchError(
      (error) {
        emit(PaymentKioskRequestTokenError(error.toString()));
        print(error.toString());
      },
    );
  }

  Future<void> getRefCode() async {
    await DioHelper.postData(url: AppConstants.refCodeUrl, data: {
      "source": {
        "identifier": "AGGREGATOR",
        "subtype": "AGGREGATOR",
      },
      "payment_token": finalKioskToken,
    }).then(
      (value) {
        refCode = value.data["id"].toString();
        emit(PaymentRefCodeSuccess());
      },
    ).catchError(
      (error) {
        emit(PaymentRefCodeError(error.toString()));
        print(error.toString());
      },
    );
  }
}
