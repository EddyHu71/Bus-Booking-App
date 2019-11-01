import 'package:booking_bus_app/components/modules.dart';

class ChangePasswordVerification extends StatefulWidget {
  final String pinID;
  ChangePasswordVerification({
    this.pinID,
  });
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChnagePasswordVerificationState();
  }
}

class ChnagePasswordVerificationState extends State<ChangePasswordVerification> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Please enter your pin code" ,style: TextStyle(fontWeight: FontWeight.w500),),
            Container(
              child: PinView(
                  dashPositions: [2, 4],
                  style: TextStyle(fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                  submit: (String pin) {
                  print(pin);
              },  count: 6),
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
            ),
            TimerVerification(),
          ],
        ),
      ),
    );
  }
}

//https://pub.dev/packages/pin_view#-readme-tab-