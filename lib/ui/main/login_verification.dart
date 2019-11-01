import 'package:booking_bus_app/components/modules.dart';
import 'package:http/http.dart' as http;

class ScreenVerification extends StatefulWidget {
/*  final int pinID;
  final String phoneNumber;
  final String token;

  ScreenVerification({
    this.pinID,
    this.phoneNumber,
    this.token
  }); */

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScreenVerificationState();
  }
}

class ScreenVerificationState extends State<ScreenVerification> {


  @override
  Widget build(BuildContext context) {

    final otpCode = Container(
              child: PinView(
                  dashPositions: [2, 4],
                  style: TextStyle(fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                  submit: (String pin) {
                  print(pin);
              },  count: 6),
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
            );
    Timer(Duration(seconds: 120), (){
      setState(() {
        Navigator.of(context).pushReplacementNamed("login");
      });
    });

    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Enter your OTP code", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0), textAlign: TextAlign.center,),
              otpCode,
              TimerVerification(),
            ],
          ),
        ),
      ),
    );
  }
}