import 'package:flutter/material.dart';

class AuthVC extends StatelessWidget {
  _btnPressed() {
    print("botton pressed");
  }

  Widget _buildEnterBtn() {
    return new RaisedButton(
      child: new Text(
        "Enter",
        style: new TextStyle(
            color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold),
      ),
      elevation: 8.0,
      color: Colors.lime,
      textColor: Colors.white,
      padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      onPressed: _btnPressed(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Title"),
      ),
      body: new Container(
        padding: new EdgeInsets.only(bottom: 75.0),
         child: _buildEnterBtn(),
      ),
    );
  }
}
