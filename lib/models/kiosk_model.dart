class KioskModel {
  KioskModel({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is_3dSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    this.terminalId,
    required this.merchantCommission,
    this.installment,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    this.merchantStaffTag,
    required this.updatedAt,
    required this.owner,
    this.parentTransaction,
  });

  late final int id;
  late final bool pending;
  late final int amountCents;
  late final bool success;
  late final bool isAuth;
  late final bool isCapture;
  late final bool isStandalonePayment;
  late final bool isVoided;
  late final bool isRefunded;
  late final bool is_3dSecure;
  late final int integrationId;
  late final int profileId;
  late final bool hasParentTransaction;
  late final Order order;
  late final String createdAt;
  late final List<dynamic> transactionProcessedCallbackResponses;
  late final String currency;
  late final SourceData sourceData;
  late final String apiSource;
  late final Null terminalId;
  late final int merchantCommission;
  late final Null installment;
  late final bool isVoid;
  late final bool isRefund;
  late final Data data;
  late final bool isHidden;
  late final PaymentKeyClaims paymentKeyClaims;
  late final bool errorOccured;
  late final bool isLive;
  late final Null otherEndpointReference;
  late final int refundedAmountCents;
  late final int sourceId;
  late final bool isCaptured;
  late final int capturedAmount;
  late final Null merchantStaffTag;
  late final String updatedAt;
  late final int owner;
  late final Null parentTransaction;

  KioskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pending = json['pending'];
    amountCents = json['amount_cents'];
    success = json['success'];
    isAuth = json['is_auth'];
    isCapture = json['is_capture'];
    isStandalonePayment = json['is_standalone_payment'];
    isVoided = json['is_voided'];
    isRefunded = json['is_refunded'];
    is_3dSecure = json['is_3d_secure'];
    integrationId = json['integration_id'];
    profileId = json['profile_id'];
    hasParentTransaction = json['has_parent_transaction'];
    order = Order.fromJson(json['order']);
    createdAt = json['created_at'];
    transactionProcessedCallbackResponses = List.castFrom<dynamic, dynamic>(
        json['transaction_processed_callback_responses']);
    currency = json['currency'];
    sourceData = SourceData.fromJson(json['source_data']);
    apiSource = json['api_source'];
    terminalId = null;
    merchantCommission = json['merchant_commission'];
    installment = null;
    isVoid = json['is_void'];
    isRefund = json['is_refund'];
    data = Data.fromJson(json['data']);
    isHidden = json['is_hidden'];
    paymentKeyClaims = PaymentKeyClaims.fromJson(json['payment_key_claims']);
    errorOccured = json['error_occured'];
    isLive = json['is_live'];
    otherEndpointReference = null;
    refundedAmountCents = json['refunded_amount_cents'];
    sourceId = json['source_id'];
    isCaptured = json['is_captured'];
    capturedAmount = json['captured_amount'];
    merchantStaffTag = null;
    updatedAt = json['updated_at'];
    owner = json['owner'];
    parentTransaction = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['pending'] = pending;
    _data['amount_cents'] = amountCents;
    _data['success'] = success;
    _data['is_auth'] = isAuth;
    _data['is_capture'] = isCapture;
    _data['is_standalone_payment'] = isStandalonePayment;
    _data['is_voided'] = isVoided;
    _data['is_refunded'] = isRefunded;
    _data['is_3d_secure'] = is_3dSecure;
    _data['integration_id'] = integrationId;
    _data['profile_id'] = profileId;
    _data['has_parent_transaction'] = hasParentTransaction;
    _data['order'] = order.toJson();
    _data['created_at'] = createdAt;
    _data['transaction_processed_callback_responses'] =
        transactionProcessedCallbackResponses;
    _data['currency'] = currency;
    _data['source_data'] = sourceData.toJson();
    _data['api_source'] = apiSource;
    _data['terminal_id'] = terminalId;
    _data['merchant_commission'] = merchantCommission;
    _data['installment'] = installment;
    _data['is_void'] = isVoid;
    _data['is_refund'] = isRefund;
    _data['data'] = data.toJson();
    _data['is_hidden'] = isHidden;
    _data['payment_key_claims'] = paymentKeyClaims.toJson();
    _data['error_occured'] = errorOccured;
    _data['is_live'] = isLive;
    _data['other_endpoint_reference'] = otherEndpointReference;
    _data['refunded_amount_cents'] = refundedAmountCents;
    _data['source_id'] = sourceId;
    _data['is_captured'] = isCaptured;
    _data['captured_amount'] = capturedAmount;
    _data['merchant_staff_tag'] = merchantStaffTag;
    _data['updated_at'] = updatedAt;
    _data['owner'] = owner;
    _data['parent_transaction'] = parentTransaction;
    return _data;
  }
}

class Order {
  Order({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    this.collector,
    required this.amountCents,
    required this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    this.merchantStaffTag,
    required this.apiSource,
    required this.data,
  });

  late final int id;
  late final String createdAt;
  late final bool deliveryNeeded;
  late final Merchant merchant;
  late final Null collector;
  late final int amountCents;
  late final ShippingData shippingData;
  late final String currency;
  late final bool isPaymentLocked;
  late final bool isReturn;
  late final bool isCancel;
  late final bool isReturned;
  late final bool isCanceled;
  late final Null merchantOrderId;
  late final Null walletNotification;
  late final int paidAmountCents;
  late final bool notifyUserWithEmail;
  late final List<Items> items;
  late final String orderUrl;
  late final int commissionFees;
  late final int deliveryFeesCents;
  late final int deliveryVatCents;
  late final String paymentMethod;
  late final Null merchantStaffTag;
  late final String apiSource;
  late final Data data;

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    deliveryNeeded = json['delivery_needed'];
    merchant = Merchant.fromJson(json['merchant']);
    collector = null;
    amountCents = json['amount_cents'];
    shippingData = ShippingData.fromJson(json['shipping_data']);
    currency = json['currency'];
    isPaymentLocked = json['is_payment_locked'];
    isReturn = json['is_return'];
    isCancel = json['is_cancel'];
    isReturned = json['is_returned'];
    isCanceled = json['is_canceled'];
    merchantOrderId = null;
    walletNotification = null;
    paidAmountCents = json['paid_amount_cents'];
    notifyUserWithEmail = json['notify_user_with_email'];
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    orderUrl = json['order_url'];
    commissionFees = json['commission_fees'];
    deliveryFeesCents = json['delivery_fees_cents'];
    deliveryVatCents = json['delivery_vat_cents'];
    paymentMethod = json['payment_method'];
    merchantStaffTag = null;
    apiSource = json['api_source'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['created_at'] = createdAt;
    _data['delivery_needed'] = deliveryNeeded;
    _data['merchant'] = merchant.toJson();
    _data['collector'] = collector;
    _data['amount_cents'] = amountCents;
    _data['shipping_data'] = shippingData.toJson();
    _data['currency'] = currency;
    _data['is_payment_locked'] = isPaymentLocked;
    _data['is_return'] = isReturn;
    _data['is_cancel'] = isCancel;
    _data['is_returned'] = isReturned;
    _data['is_canceled'] = isCanceled;
    _data['merchant_order_id'] = merchantOrderId;
    _data['wallet_notification'] = walletNotification;
    _data['paid_amount_cents'] = paidAmountCents;
    _data['notify_user_with_email'] = notifyUserWithEmail;
    _data['items'] = items.map((e) => e.toJson()).toList();
    _data['order_url'] = orderUrl;
    _data['commission_fees'] = commissionFees;
    _data['delivery_fees_cents'] = deliveryFeesCents;
    _data['delivery_vat_cents'] = deliveryVatCents;
    _data['payment_method'] = paymentMethod;
    _data['merchant_staff_tag'] = merchantStaffTag;
    _data['api_source'] = apiSource;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Merchant {
  Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  late final int id;
  late final String createdAt;
  late final List<String> phones;
  late final List<String> companyEmails;
  late final String companyName;
  late final String state;
  late final String country;
  late final String city;
  late final String postalCode;
  late final String street;

  Merchant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    phones = List.castFrom<dynamic, String>(json['phones']);
    companyEmails = List.castFrom<dynamic, String>(json['company_emails']);
    companyName = json['company_name'];
    state = json['state'];
    country = json['country'];
    city = json['city'];
    postalCode = json['postal_code'];
    street = json['street'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['phones'] = phones;
    data['company_emails'] = companyEmails;
    data['company_name'] = companyName;
    data['state'] = state;
    data['country'] = country;
    data['city'] = city;
    data['postal_code'] = postalCode;
    data['street'] = street;
    return data;
  }
}

class ShippingData {
  ShippingData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    required this.shippingMethod,
    required this.orderId,
    required this.order,
  });

  late final int id;
  late final String firstName;
  late final String lastName;
  late final String street;
  late final String building;
  late final String floor;
  late final String apartment;
  late final String city;
  late final String state;
  late final String country;
  late final String email;
  late final String phoneNumber;
  late final String postalCode;
  late final String extraDescription;
  late final String shippingMethod;
  late final int orderId;
  late final int order;

  ShippingData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    street = json['street'];
    building = json['building'];
    floor = json['floor'];
    apartment = json['apartment'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    extraDescription = json['extra_description'];
    shippingMethod = json['shipping_method'];
    orderId = json['order_id'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['street'] = street;
    data['building'] = building;
    data['floor'] = floor;
    data['apartment'] = apartment;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['email'] = email;
    data['phone_number'] = phoneNumber;
    data['postal_code'] = postalCode;
    data['extra_description'] = extraDescription;
    data['shipping_method'] = shippingMethod;
    data['order_id'] = orderId;
    data['order'] = order;
    return data;
  }
}

class Items {
  Items({
    required this.name,
    required this.description,
    required this.amountCents,
    required this.quantity,
  });

  late final String name;
  late final String description;
  late final int amountCents;
  late final int quantity;

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    amountCents = json['amount_cents'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['amount_cents'] = amountCents;
    data['quantity'] = quantity;
    return data;
  }
}

class Data {
  Data();

  Data.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}

class SourceData {
  SourceData({
    required this.subType,
    required this.type,
    required this.pan,
  });

  late final String subType;
  late final String type;
  late final String pan;

  SourceData.fromJson(Map<String, dynamic> json) {
    subType = json['sub_type'];
    type = json['type'];
    pan = json['pan'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sub_type'] = subType;
    data['type'] = type;
    data['pan'] = pan;
    return data;
  }
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    required this.lockOrderWhenPaid,
    required this.extra,
    required this.billingData,
    required this.amountCents,
    required this.integrationId,
    required this.currency,
    required this.orderId,
    required this.exp,
    required this.pmkIp,
    required this.userId,
  });

  late final bool lockOrderWhenPaid;
  late final Extra extra;
  late final BillingData billingData;
  late final int amountCents;
  late final int integrationId;
  late final String currency;
  late final int orderId;
  late final int exp;
  late final String pmkIp;
  late final int userId;

  PaymentKeyClaims.fromJson(Map<String, dynamic> json) {
    lockOrderWhenPaid = json['lock_order_when_paid'];
    extra = Extra.fromJson(json['extra']);
    billingData = BillingData.fromJson(json['billing_data']);
    amountCents = json['amount_cents'];
    integrationId = json['integration_id'];
    currency = json['currency'];
    orderId = json['order_id'];
    exp = json['exp'];
    pmkIp = json['pmk_ip'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lock_order_when_paid'] = lockOrderWhenPaid;
    data['extra'] = extra.toJson();
    data['billing_data'] = billingData.toJson();
    data['amount_cents'] = amountCents;
    data['integration_id'] = integrationId;
    data['currency'] = currency;
    data['order_id'] = orderId;
    data['exp'] = exp;
    data['pmk_ip'] = pmkIp;
    data['user_id'] = userId;
    return data;
  }
}

class Extra {
  Extra();

  Extra.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}

class BillingData {
  BillingData({
    required this.floor,
    required this.building,
    required this.country,
    required this.postalCode,
    required this.phoneNumber,
    required this.street,
    required this.email,
    required this.firstName,
    required this.apartment,
    required this.lastName,
    required this.state,
    required this.city,
    required this.extraDescription,
  });

  late final String floor;
  late final String building;
  late final String country;
  late final String postalCode;
  late final String phoneNumber;
  late final String street;
  late final String email;
  late final String firstName;
  late final String apartment;
  late final String lastName;
  late final String state;
  late final String city;
  late final String extraDescription;

  BillingData.fromJson(Map<String, dynamic> json) {
    floor = json['floor'];
    building = json['building'];
    country = json['country'];
    postalCode = json['postal_code'];
    phoneNumber = json['phone_number'];
    street = json['street'];
    email = json['email'];
    firstName = json['first_name'];
    apartment = json['apartment'];
    lastName = json['last_name'];
    state = json['state'];
    city = json['city'];
    extraDescription = json['extra_description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['floor'] = floor;
    data['building'] = building;
    data['country'] = country;
    data['postal_code'] = postalCode;
    data['phone_number'] = phoneNumber;
    data['street'] = street;
    data['email'] = email;
    data['first_name'] = firstName;
    data['apartment'] = apartment;
    data['last_name'] = lastName;
    data['state'] = state;
    data['city'] = city;
    data['extra_description'] = extraDescription;
    return data;
  }
}
