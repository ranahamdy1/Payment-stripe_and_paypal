import 'package:checkout_payment_ui/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_payment_ui/cubit/stripe_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '100', currency: 'USD');
            BlocProvider.of<StripeCubit>(context).makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
            isLoading: state is StripeLoading? true: false,
            text: 'Continue');
      },
    );
  }
}
