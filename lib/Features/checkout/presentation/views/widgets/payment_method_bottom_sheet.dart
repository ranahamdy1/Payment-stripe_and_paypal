import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'custom_buttom_bloc_consumer.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButtomBlocConsumer(),
        ],
      ),
    );
  }
}

