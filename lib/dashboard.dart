import 'package:booking_bus_app/components/modules.dart';

class Dashboard extends StatefulWidget {
  int indexing;

  Dashboard({
    this.indexing = 0,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {

  int page;

  Widget currentpages (int index) {
    switch (index) {
      case 0 :
        return new Home();
        break;
      case 1 :
        return new MyBooking();
        break;
      case 2 :
        return new Help();
        break;
      case 3 :
        return new MyAccount();
        break;
      default :
        return new NotFound();
        break;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    page = widget.indexing;
    super.initState();
  }

  Widget titles(int index) {
    switch (index) {
      case 0 :
        return Text("TicGet");
        break;
      case 1 :
        return Text("My Booking");
        break;
      case 2 :
        return Text("Help");
        break;
      case 3 :
        return Text("My Account");
        break;
    }
  }
  //https://www.mindinventory.com/mobile-portfolio/bus-ticket-booking-app.php
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: titles(page),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index){
              setState(() {
                page = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: page,
            items: [
               BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
               BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("My Booking")),
               BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("Help")),
               BottomNavigationBarItem(icon: Icon(Icons.person_pin), title: Text("My Account")),
            ]
        ),
        body: currentpages(page),
    );
  }

}