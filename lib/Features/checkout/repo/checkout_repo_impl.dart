import 'package:checkout_payment_ui/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/Features/checkout/repo/checkout_repo.dart';
import 'package:checkout_payment_ui/core/stripe_services.dart';
import 'package:dartz/dartz.dart';

class CheckOutRepoImpl extends CheckoutRepo{
  final StripeServices stripeServices =StripeServices();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    try{
      await stripeServices.makePayment(paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    }catch(e){
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

}