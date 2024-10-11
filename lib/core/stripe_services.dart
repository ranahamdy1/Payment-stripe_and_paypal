import 'package:checkout_payment_ui/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/Features/checkout/data/models/payment_intent_model.dart';
import 'package:checkout_payment_ui/core/api_keys.dart';
import 'package:checkout_payment_ui/core/api_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices{
  //1- createPaymentIntent
  final ApiServices apiServices= ApiServices();
  Future<PaymentIntentModel> createPaymentIntent(PaymentIntentInputModel paymentIntentInputModel )async {
    var response = await apiServices.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiKeys.secretKey
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  //2- initPaymentSheet
  Future initPaymentSheet({required String paymentIntentClientSecret})async{
    await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'RANA',

    ));
  }

  //3- displayPaymentSheet
  Future displayPaymentSheet()async{
    await Stripe.instance.presentPaymentSheet();
  }

  //method to do 3 method (createPaymentIntent, initPaymentSheet, displayPaymentSheet)
  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async{
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}