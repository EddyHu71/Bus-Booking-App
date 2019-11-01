import 'package:booking_bus_app/components/modules.dart';
import 'package:http/http.dart' as http;

class MyBooking extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyBookingState();
  }
}

class MyBookingState extends State<MyBooking> {

  void getBooking() async {
    var conn = await http.get(AppUrl.APP_URL_BOOKING);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("My Booking")
      /*CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Current Booking"),
          ),

          Card(
            elevation: 2.5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                  children: <Widget>[
                    Text("Title", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Subtitle")
                  ],
              ),
            )
          ),
*//*          Text("Yesterday Booking"),*//*
          SliverAppBar(
            title: Text("Current Booking"),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((BuildContext context, int i) {
            return Card(
              elevation: 2.5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Title", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Subtitle")
                  ],
                ),
              )
            );
          }))
        ],
      )*/
/*        ListView.builder(
        itemBuilder: (BuildContext context, int index) {
      return Card(
        elevation: 2.5,
        child: Column(
          children: <Widget>[

          ],
        ),
      );
    }),*/
    );
  }

}