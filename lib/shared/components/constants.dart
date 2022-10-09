class AppConstants {
  static const String paymentApiKey =
      "ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SnVZVzFsSWpvaWFXNXBkR2xoYkNJc0luQnliMlpwYkdWZmNHc2lPalUwTVRnd01pd2lZMnhoYzNNaU9pSk5aWEpqYUdGdWRDSjkuRDduMGRUZ1pQNHh1VG9aLWU3S3dGTFNydXRFOUxjSzROeUtKbUcwR0FJazkxcTROMlFBQ2o0YnA0R1F5dHZtTE5qMTVNMXFKd1k4dFBzREZRVTBKeHc=";
  static const String integrationKioskId = "2857314";
  static const String integrationCardId = "2856694";
  static const String firstTokenUrl = "auth/tokens";
  static const String orderIdUrl = "ecommerce/orders";
  static const String finalTokenUrl = "acceptance/payment_keys";
  static const String refCodeUrl = "acceptance/payments/pay";
}

String payMobToken = "";

String payMobOrderId = "";
String finalCardToken = "";
String finalKioskToken = "";
String refCode = "";
String frame =
    "https://accept.paymob.com/api/acceptance/iframes/682061?payment_token=$finalCardToken";
