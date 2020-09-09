import 'package:meta/meta.dart';
import 'package:intl/intl.dart';

class RequestToken {
  RequestToken({
    @required this.success,
    @required this.expiresAt,
    @required this.requestToken,
  });

  final bool success;
  final DateTime expiresAt;
  final String requestToken;

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        success: json["success"],
        expiresAt: DateFormat('yyyy-MM-dd hh:mm:ss').parse(json["expires_at"]),
        requestToken: json["request_token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "expires_at": expiresAt.toString(),
        "request_token": requestToken,
      };
}
