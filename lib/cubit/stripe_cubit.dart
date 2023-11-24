import 'package:bloc/bloc.dart';
import 'package:checkout_payment_ui/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/Features/checkout/repo/checkout_repo.dart';
import 'package:meta/meta.dart';

part 'stripe_state.dart';

class StripeCubit extends Cubit<StripeState> {
  StripeCubit(this.checkoutRepo) : super(StripeInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(StripeLoading());
    var data = await checkoutRepo.makePayment(paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) => emit(StripeFailure(l.errMessage)), (r) => emit(StripeSuccess()));
  }
  @override
  void onChange(Change<StripeState> change){
    //log(change.toString());
    super.onChange(change);
  }
}
