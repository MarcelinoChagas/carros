import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _text(
              "Login",
              "Enter Login",
              controller: _tLogin,
              validator: _validateLogin,
            ),
            _text("Password", "Enter Password",
                controller: _tSenha,
                password: true,
                validator: _validatePassword,
                keyboardType: TextInputType.number),
            SizedBox(
              height: 20,
            ),
            _button("Login", _onClickLogin),
          ],
        ),
      ),
    );
  }

  _text(
    String label,
    String hint, {
    bool password = false,
    TextEditingController controller,
    FormFieldValidator<String> validator,
    TextInputType keyboardType,
        TextInputAction textInputAction,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: TextStyle(fontSize: 25, color: Colors.red),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: hint),
    );
  }

  _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.red,
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        onPressed: onPressed,
      ),
    );
  }

  _onClickLogin() {
    bool formOk = _formKey.currentState.validate();

    if (!formOk) {
      return;
    }
    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Enter your login";
    }
    return null;
  }

  String _validatePassword(String text) {
    if (text.isEmpty) {
      return "Enter your password";
    }
    return null;
  }
}
