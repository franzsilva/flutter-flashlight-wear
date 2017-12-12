import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Light',
      home: new FlutterLightPage(),
    );
  }
}

class FlutterLightPage extends StatefulWidget {
  FlutterLightPage({Key key}) : super(key: key);

  @override
  _FlutterLightPageState createState() => new _FlutterLightPageState();
}

class _FlutterLightPageState extends State<FlutterLightPage> {
  bool flashlight_on = true;

  void _switchFlashlight() {
    setState(() {
      flashlight_on = !flashlight_on;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new InkWell(
          onTap: _switchFlashlight,
          child: new Container(
              color: flashlight_on ? Colors.white : Colors.black,
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new IconButton(
                        icon: new Icon(
                          flashlight_on ? Icons.flash_on : Icons.flash_off,
                          color: Colors.grey,
                          size: 40.0,
                        ),
                        onPressed: null)
                  ],
                ),
              ))),
    );
  }
}
