class PaymentIntentModel {
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  Null? application;
  Null? applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  Null? canceledAt;
  Null? cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  Null? customer;
  Null? description;
  Null? invoice;
  Null? lastPaymentError;
  Null? latestCharge;
  bool? livemode;
  Tip? metadata;
  Null? nextAction;
  Null? onBehalfOf;
  Null? paymentMethod;
  Null? paymentMethodConfigurationDetails;
  PaymentMethodOptions? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  Null? processing;
  Null? receiptEmail;
  Null? review;
  Null? setupFutureUsage;
  Null? shipping;
  Null? source;
  Null? statementDescriptor;
  Null? statementDescriptorSuffix;
  String? status;
  Null? transferData;
  Null? transferGroup;

  PaymentIntentModel({this.id, this.object, this.amount, this.amountCapturable, this.amountDetails, this.amountReceived, this.application, this.applicationFeeAmount, this.automaticPaymentMethods, this.canceledAt, this.cancellationReason, this.captureMethod, this.clientSecret, this.confirmationMethod, this.created, this.currency, this.customer, this.description, this.invoice, this.lastPaymentError, this.latestCharge, this.livemode, this.metadata, this.nextAction, this.onBehalfOf, this.paymentMethod, this.paymentMethodConfigurationDetails, this.paymentMethodOptions, this.paymentMethodTypes, this.processing, this.receiptEmail, this.review, this.setupFutureUsage, this.shipping, this.source, this.statementDescriptor, this.statementDescriptorSuffix, this.status, this.transferData, this.transferGroup});

  PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    amountCapturable = json['amount_capturable'];
    amountDetails = json['amount_details'] != null ? new AmountDetails.fromJson(json['amount_details']) : null;
    amountReceived = json['amount_received'];
    application = json['application'];
    applicationFeeAmount = json['application_fee_amount'];
    automaticPaymentMethods = json['automatic_payment_methods'] != null ? new AutomaticPaymentMethods.fromJson(json['automatic_payment_methods']) : null;
    canceledAt = json['canceled_at'];
    cancellationReason = json['cancellation_reason'];
    captureMethod = json['capture_method'];
    clientSecret = json['client_secret'];
    confirmationMethod = json['confirmation_method'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    description = json['description'];
    invoice = json['invoice'];
    lastPaymentError = json['last_payment_error'];
    latestCharge = json['latest_charge'];
    livemode = json['livemode'];
    metadata = json['metadata'] != null ? new Tip.fromJson(json['metadata']) : null;
    nextAction = json['next_action'];
    onBehalfOf = json['on_behalf_of'];
    paymentMethod = json['payment_method'];
    paymentMethodConfigurationDetails = json['payment_method_configuration_details'];
    paymentMethodOptions = json['payment_method_options'] != null ? new PaymentMethodOptions.fromJson(json['payment_method_options']) : null;
    paymentMethodTypes = json['payment_method_types'].cast<String>();
    processing = json['processing'];
    receiptEmail = json['receipt_email'];
    review = json['review'];
    setupFutureUsage = json['setup_future_usage'];
    shipping = json['shipping'];
    source = json['source'];
    statementDescriptor = json['statement_descriptor'];
    statementDescriptorSuffix = json['statement_descriptor_suffix'];
    status = json['status'];
    transferData = json['transfer_data'];
    transferGroup = json['transfer_group'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['object'] = this.object;
    data['amount'] = this.amount;
    data['amount_capturable'] = this.amountCapturable;
    if (this.amountDetails != null) {
      data['amount_details'] = this.amountDetails!.toJson();
    }
    data['amount_received'] = this.amountReceived;
    data['application'] = this.application;
    data['application_fee_amount'] = this.applicationFeeAmount;
    if (this.automaticPaymentMethods != null) {
      data['automatic_payment_methods'] = this.automaticPaymentMethods!.toJson();
    }
    data['canceled_at'] = this.canceledAt;
    data['cancellation_reason'] = this.cancellationReason;
    data['capture_method'] = this.captureMethod;
    data['client_secret'] = this.clientSecret;
    data['confirmation_method'] = this.confirmationMethod;
    data['created'] = this.created;
    data['currency'] = this.currency;
    data['customer'] = this.customer;
    data['description'] = this.description;
    data['invoice'] = this.invoice;
    data['last_payment_error'] = this.lastPaymentError;
    data['latest_charge'] = this.latestCharge;
    data['livemode'] = this.livemode;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    data['next_action'] = this.nextAction;
    data['on_behalf_of'] = this.onBehalfOf;
    data['payment_method'] = this.paymentMethod;
    data['payment_method_configuration_details'] = this.paymentMethodConfigurationDetails;
    if (this.paymentMethodOptions != null) {
      data['payment_method_options'] = this.paymentMethodOptions!.toJson();
    }
    data['payment_method_types'] = this.paymentMethodTypes;
    data['processing'] = this.processing;
    data['receipt_email'] = this.receiptEmail;
    data['review'] = this.review;
    data['setup_future_usage'] = this.setupFutureUsage;
    data['shipping'] = this.shipping;
    data['source'] = this.source;
    data['statement_descriptor'] = this.statementDescriptor;
    data['statement_descriptor_suffix'] = this.statementDescriptorSuffix;
    data['status'] = this.status;
    data['transfer_data'] = this.transferData;
    data['transfer_group'] = this.transferGroup;
    return data;
  }
}

class AmountDetails {
  Tip? tip;

  AmountDetails({this.tip});

  AmountDetails.fromJson(Map<String, dynamic> json) {
    tip = json['tip'] != null ? new Tip.fromJson(json['tip']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tip != null) {
      data['tip'] = this.tip!.toJson();
    }
    return data;
  }
}

class Tip {


  //Tip({});

Tip.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}

class AutomaticPaymentMethods {
  String? allowRedirects;
  bool? enabled;

  AutomaticPaymentMethods({this.allowRedirects, this.enabled});

  AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    allowRedirects = json['allow_redirects'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['allow_redirects'] = this.allowRedirects;
    data['enabled'] = this.enabled;
    return data;
  }
}

class PaymentMethodOptions {
  Card? card;

  PaymentMethodOptions({this.card});

  PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    card = json['card'] != null ? new Card.fromJson(json['card']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.card != null) {
      data['card'] = this.card!.toJson();
    }
    return data;
  }
}

class Card {
  Null? installments;
  Null? mandateOptions;
  Null? network;
  String? requestThreeDSecure;

  Card({this.installments, this.mandateOptions, this.network, this.requestThreeDSecure});

  Card.fromJson(Map<String, dynamic> json) {
    installments = json['installments'];
    mandateOptions = json['mandate_options'];
    network = json['network'];
    requestThreeDSecure = json['request_three_d_secure'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['installments'] = this.installments;
    data['mandate_options'] = this.mandateOptions;
    data['network'] = this.network;
    data['request_three_d_secure'] = this.requestThreeDSecure;
    return data;
  }
}

class PaymentIntentModel{
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  Null? application;
  Null? applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  Null? canceledAt;
  Null? cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  Null? customer;
  Null? description;
  Null? invoice;
  Null? lastPaymentError;
  Null? latestCharge;
  bool? livemode;
  Tip? metadata;
  Null? nextAction;
  Null? onBehalfOf;
  Null? paymentMethod;
  Null? paymentMethodConfigurationDetails;
  PaymentMethodOptions? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  Null? processing;
  Null? receiptEmail;
  Null? review;
  Null? setupFutureUsage;
  Null? shipping;
  Null? source;
  Null? statementDescriptor;
  Null? statementDescriptorSuffix;
  String? status;
  Null? transferData;
  Null? transferGroup;

  PaymentIntentModel({this.id, this.object, this.amount, this.amountCapturable, this.amountDetails, this.amountReceived, this.application, this.applicationFeeAmount, this.automaticPaymentMethods, this.canceledAt, this.cancellationReason, this.captureMethod, this.clientSecret, this.confirmationMethod, this.created, this.currency, this.customer, this.description, this.invoice, this.lastPaymentError, this.latestCharge, this.livemode, this.metadata, this.nextAction, this.onBehalfOf, this.paymentMethod, this.paymentMethodConfigurationDetails, this.paymentMethodOptions, this.paymentMethodTypes, this.processing, this.receiptEmail, this.review, this.setupFutureUsage, this.shipping, this.source, this.statementDescriptor, this.statementDescriptorSuffix, this.status, this.transferData, this.transferGroup});

  PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    amountCapturable = json['amount_capturable'];
    amountDetails = json['amount_details'] != null ? new AmountDetails.fromJson(json['amount_details']) : null;
    amountReceived = json['amount_received'];
    application = json['application'];
    applicationFeeAmount = json['application_fee_amount'];
    automaticPaymentMethods = json['automatic_payment_methods'] != null ? new AutomaticPaymentMethods.fromJson(json['automatic_payment_methods']) : null;
    canceledAt = json['canceled_at'];
    cancellationReason = json['cancellation_reason'];
    captureMethod = json['capture_method'];
    clientSecret = json['client_secret'];
    confirmationMethod = json['confirmation_method'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    description = json['description'];
    invoice = json['invoice'];
    lastPaymentError = json['last_payment_error'];
    latestCharge = json['latest_charge'];
    livemode = json['livemode'];
    metadata = json['metadata'] != null ? new Tip.fromJson(json['metadata']) : null;
    nextAction = json['next_action'];
    onBehalfOf = json['on_behalf_of'];
    paymentMethod = json['payment_method'];
    paymentMethodConfigurationDetails = json['payment_method_configuration_details'];
    paymentMethodOptions = json['payment_method_options'] != null ? new PaymentMethodOptions.fromJson(json['payment_method_options']) : null;
    paymentMethodTypes = json['payment_method_types'].cast<String>();
    processing = json['processing'];
    receiptEmail = json['receipt_email'];
    review = json['review'];
    setupFutureUsage = json['setup_future_usage'];
    shipping = json['shipping'];
    source = json['source'];
    statementDescriptor = json['statement_descriptor'];
    statementDescriptorSuffix = json['statement_descriptor_suffix'];
    status = json['status'];
    transferData = json['transfer_data'];
    transferGroup = json['transfer_group'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['object'] = this.object;
    data['amount'] = this.amount;
    data['amount_capturable'] = this.amountCapturable;
    if (this.amountDetails != null) {
      data['amount_details'] = this.amountDetails!.toJson();
    }
    data['amount_received'] = this.amountReceived;
    data['application'] = this.application;
    data['application_fee_amount'] = this.applicationFeeAmount;
    if (this.automaticPaymentMethods != null) {
      data['automatic_payment_methods'] = this.automaticPaymentMethods!.toJson();
    }
    data['canceled_at'] = this.canceledAt;
    data['cancellation_reason'] = this.cancellationReason;
    data['capture_method'] = this.captureMethod;
    data['client_secret'] = this.clientSecret;
    data['confirmation_method'] = this.confirmationMethod;
    data['created'] = this.created;
    data['currency'] = this.currency;
    data['customer'] = this.customer;
    data['description'] = this.description;
    data['invoice'] = this.invoice;
    data['last_payment_error'] = this.lastPaymentError;
    data['latest_charge'] = this.latestCharge;
    data['livemode'] = this.livemode;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    data['next_action'] = this.nextAction;
    data['on_behalf_of'] = this.onBehalfOf;
    data['payment_method'] = this.paymentMethod;
    data['payment_method_configuration_details'] = this.paymentMethodConfigurationDetails;
    if (this.paymentMethodOptions != null) {
      data['payment_method_options'] = this.paymentMethodOptions!.toJson();
    }
    data['payment_method_types'] = this.paymentMethodTypes;
    data['processing'] = this.processing;
    data['receipt_email'] = this.receiptEmail;
    data['review'] = this.review;
    data['setup_future_usage'] = this.setupFutureUsage;
    data['shipping'] = this.shipping;
    data['source'] = this.source;
    data['statement_descriptor'] = this.statementDescriptor;
    data['statement_descriptor_suffix'] = this.statementDescriptorSuffix;
    data['status'] = this.status;
    data['transfer_data'] = this.transferData;
    data['transfer_group'] = this.transferGroup;
    return data;
  }
}
