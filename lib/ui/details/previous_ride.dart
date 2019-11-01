import 'package:booking_bus_app/components/modules.dart';

class PreviousRide extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PreviousRideState();
  }
}

class PreviousRideState extends State<PreviousRide> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Previous Ride"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int i) {
            return Card(
              elevation: 2.5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Title", style: TextStyle(fontWeight: FontWeight.bold),),
                        Expanded(child: SizedBox(),),
                        Text("Types")
                      ],
                    ),
                    Text("Desc", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
                    Row(
                      children: <Widget>[
                        Text("From :"),
                        Expanded(child: SizedBox(),),
                        Text("To :")
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

}