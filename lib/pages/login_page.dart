import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      body: _body(),
    );
  }

  _body(){
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[

          Text("Login",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24
            ),
          ),
          TextFormField(),

          Text("Password",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24
            ),
          ),

          TextFormField(
            obscureText: true,
          ),
          SizedBox(height: 20,),
          Container(
            height: 46,
            child: RaisedButton(
              color: Colors.red,
              child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23
                  ),
              ),
              onPressed: (){},
            ),
          )
        ],
      ),
    );
  }
}