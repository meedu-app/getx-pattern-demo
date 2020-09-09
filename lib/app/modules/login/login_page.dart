import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: _.onUsernameChanged,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "username",
                  ),
                ),
                TextField(
                  onChanged: _.onPasswordChanged,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "password",
                  ),
                ),
                FlatButton(
                  onPressed: _.submit,
                  color: Colors.black,
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
