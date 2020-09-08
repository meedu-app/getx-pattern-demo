import 'package:meta/meta.dart';

class RequestToken {
  RequestToken({
    @required this.success,
    @required this.expiresAt,
    @required this.requestToken,
  });

  final bool success;
  final String expiresAt;
  final String requestToken;

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        success: json["success"],
        expiresAt: json["expires_at"],
        requestToken: json["request_token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "expires_at": expiresAt,
        "request_token": requestToken,
      };
}
