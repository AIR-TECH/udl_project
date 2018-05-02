import 'package:flutter/material.dart';
import './authVC/auth.dart';

final pages = [
  new PageViewModel(
      const Color(0xFF678FB4),
      '../assets/',
      'Engagement',
      'The Why Of Learning',
      '../assets/',
  ),
  new PageViewModel(
      const Color(0xFF65B0B4),
      '../assets/',
      'Representation',
      'The What Of Leraning',
      '../assets/',
  ),
  new PageViewModel(
    const Color(0xFF9B90BC),
    '../assets/',
    'Action & Expression',
    'The How Of Learning',
    '../assets/',
  ),
];

class Page extends StatelessWidget {

  final PageViewModel viewModel;
  final double percentVisible;

  Page({
    this.viewModel,
    this.percentVisible = 1.0,
  });

  _buttonPressed(BuildContext context){
    print(context);
    Navigator.push(context, 
      new MaterialPageRoute(
        builder: (context) => new AuthVC(),
      )
    );
  }

  Widget _buildEnterBtn(BuildContext context){
    return new RaisedButton(
      child: new Text("Enter", style: new TextStyle(
        color: Colors.white,
        fontSize: 17.0,
        fontWeight: FontWeight.bold
      ),),
      elevation: 8.0,
      color: Colors.lime,
      textColor: Colors.white,
      padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      onPressed: _buttonPressed(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        color: viewModel.color,
        child: new Opacity(
          opacity: percentVisible,
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Transform(
                  transform: new Matrix4.translationValues(0.0, 50.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 25.0),
                    child: new Image.asset(
                        viewModel.heroAssetPath,
                        width: 200.0,
                        height: 200.0
                    ),
                    // child: new FlatButton();
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: new Text(
                      viewModel.title,
                      style: new TextStyle(
                        color: Colors.white,
                        fontFamily: 'FlamanteRoma',
                        fontSize: 34.0,
                      ),
                    ),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 75.0),
                    child: new Text(
                      viewModel.body,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                _buildEnterBtn(context),
              ]
          ),
        )
    );
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;

  PageViewModel(
    this.color,
    this.heroAssetPath,
    this.title,
    this.body,
    this.iconAssetPath
  );
}
