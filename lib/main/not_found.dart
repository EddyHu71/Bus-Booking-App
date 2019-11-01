import 'package:booking_bus_app/components/modules.dart';

class NotFound extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NotFoundState();
  }
}

class NotFoundState extends State<NotFound> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("Not Found")
        ],
      ),
    );
  }

}