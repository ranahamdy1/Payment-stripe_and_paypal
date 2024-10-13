import 'dart:developer';

import 'package:checkout_payment_ui/Features/checkout/data/models/amount_model.dart';
import 'package:checkout_payment_ui/Features/checkout/data/models/item_list_model.dart';
import 'package:checkout_payment_ui/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_payment_ui/core/api_keys.dart';
import 'package:checkout_payment_ui/cubit/stripe_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../../../../../core/widgets/custom_button.dart';

class CustomButtomBlocConsumer extends StatelessWidget {
  const CustomButtomBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripeCubit, StripeState>(
      listener: (context, state) {
        if(state is StripeSuccess)
          {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context){
                      return const ThankYouView();
                    }));
          }
        if(state is StripeFailure){
          Navigator.of(context).pop();
          SnackBar snackBar=SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print(state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: (){
            // // here stripe
            // PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '100', currency: 'USD');
            // BlocProvider.of<StripeCubit>(context).makePayment(paymentIntentInputModel: paymentIntentInputModel);
            //--------------------------------------------------------------------------------------------------------


            //paypal
            var amount = AmountModel(
            total: "100",
            currency: "USD",
            details: Details(
                shipping:"0",
                shippingDiscount: 0,
                subtotal: "100"
            ),
            );
            List<Items> orders = [
              Items(
                name: "Apple",
                quantity: 10,
                price: "4",
                currency: "USD",
              ),
              Items(
                name: "Apple",
                quantity: 12,
                price: "5",
                currency: "USD",
              )
            ];

            var itemList = ItemListModel(items: orders);

          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => PaypalCheckoutView(
              sandboxMode: true, //test mode
              clientId: ApiKeys.clientId,
              secretKey: ApiKeys.payPalSecretKey,
              transactions: [
                {
                  "amount": amount.toJson(),
                  "description": "The payment transaction description.",
                  "item_list": itemList.toJson(),
                }
              ],
              note: "Contact us for any questions on your order.",
              onSuccess: (Map params) async {
                log("onSuccess: $params");
                Navigator.pop(context);
              },
              onError: (error) {
                log("onError: $error");
                Navigator.pop(context);
              },
              onCancel: () {
                print('cancelled:');
                Navigator.pop(context);
              },
            ),
          ));
          },
            isLoading: state is StripeLoading? true: false,
            text: 'Continue');
      },
    );
  }
}
