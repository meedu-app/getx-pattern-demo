import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern_demo/app/data/repositories/remote/authentication_repository.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class LoginController extends GetxController {
  final AuthenticationRepository _authenticationRepository =
      Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  String _username = '', _password = '';

  void onUsernameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<void> submit() async {
    try {
      RequestToken requestToken =
          await _authenticationRepository.newRequestToken();
      final RequestToken authRequestToken =
          await _authenticationRepository.authWithLogin(
        username: _username,
        password: _password,
        requestToken: requestToken.requestToken,
      );
      await _localAuthRepository.setSession(authRequestToken);
      Get.offNamed(AppRoutes.HOME);
    } catch (e) {
      print(e);
      String message = "";
      if (e is DioError) {
        if (e.response != null) {
          message = e.response.statusMessage;
        } else {
          message = e.message;
        }
      }
      Get.dialog(
        AlertDialog(
          title: Text("ERROR"),
          content: Text(message),
          actions: [
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
      );
    }
  }
}
