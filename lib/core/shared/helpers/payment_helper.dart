import 'package:phonepe_payment_sdk/phonepe_payment_sdk.dart';

class PhonePeService {
  /// Initialize SDK
  static Future<bool> initPhonePe({
    required String environment,
    required String merchantId,
    String appId = "",
    bool enableLogs = true,
  }) async {
    try {
      bool result = await PhonePePaymentSdk.init(
        environment,
        appId,
        merchantId,
        enableLogs,
      );

      print("PhonePe Init Result: $result");
      return result;
    } catch (e, stack) {
      print("Init Exception: $e");
      print(stack);
      return false;
    }
  }

  /// Start Transaction
  static Future<String?> startTransaction({
    required String body,
    required String checksum,
    required String callbackUrl,
    required String apiEndPoint,
  }) async {
    try {
      final response = await PhonePePaymentSdk.startTransaction(
        body,
        callbackUrl,
        checksum,
        apiEndPoint,
      );

      print("SDK Response: $response");

      if (response != null) {
        final status = response['status']?.toString();
        final error = response['error']?.toString();

        if (status == "SUCCESS") {
          print("Payment Success");
          return "SUCCESS";
        } else if (status == "USER_CANCEL") {
          print("User Cancelled");
          return "USER_CANCEL";
        } else {
          print("Payment Failed: $status - $error");
          return status;
        }
      } else {
        print("Payment Incomplete (null response)");
        return null;
      }
    } catch (e, stack) {
      print("Payment Exception: $e");
      print(stack);
      return null;
    }
  }
}
