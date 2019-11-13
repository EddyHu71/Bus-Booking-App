import 'package:booking_bus_app/components/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(

  MyApp(),);

class MyApp extends StatelessWidget {
  Colours colours = new Colours();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonColor: Colours.magenta,
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        appBarTheme: AppBarTheme(
          color: Colours.darkBlue
        ),
        fontFamily: "Calibri",
      ),
      home: myApp(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        "dashboard" : (BuildContext context) => new Dashboard(),
        "login" : (BuildContext context) => new Login(),
        "login_verification" : (BuildContext context) => new ScreenVerification(),
        "change_password_verification" : (BuildContext context) => new ChangePasswordVerification(),
        "change_password" : (BuildContext context) => new ForgetPasswords(),
      },
    );
  }
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myAppState();
  }
}

class myAppState extends State<myApp> with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    /*Navigator.push(context,MaterialPageRoute(builder:  (context) => Login()));*/
    Navigator.of(context).pushReplacementNamed("login");
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: const Text.rich(
                  TextSpan(

                    // default text style
                    children: <TextSpan>[
                      TextSpan(text: ' Powered By ', style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.normal,color: Colors.black,fontFamily:'Ubuntu')),
                      TextSpan(text: 'Eddy', style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,color: Colors.orange,fontFamily:'Ubuntu')),

                    ],
                  ),
                ),
              ),
              /* Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: new Image.asset(
                   'assets/images/FinalPng.png',
                    height: 50.0,
                    fit: BoxFit.scaleDown,
                  )),
                  */
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: new Image.asset(
                  'assets/images/splash.jpg',
                  width: animation.value * 250,
                  height: animation.value * 250,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
