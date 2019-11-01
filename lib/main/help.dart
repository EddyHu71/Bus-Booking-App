import 'package:booking_bus_app/components/modules.dart';
import 'package:http/http.dart' as http;

class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HelpState();
  }
}

class HelpState extends State<Help> {

  List<String> helps = ["The Bus is speeding", "The Bus is dirty", "The Bus is smell", "The driver is rude", "Other"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("Help us to improve our app", 
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Card(
              child: ListView.builder(
              itemCount: helps.length,
              itemBuilder: (BuildContext context, int i) {
                return InkWell(
                  child: Text(helps[i],), onTap: (){
                  
                    },
                  );
                },
              ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: WidgetComponent.buttons("Send",
                    textColor : Colors.white,
                    bolds: FontWeight.bold,
                    elevas: 2.0,
                    radius: 20.0,
                    padding: EdgeInsets.only(top: 8.0),
                    coloring: Colours.magenta,
                    onPressed: (){

                    }),
              )
            ],
          ),
          RichText(
            text: TextSpan(
              text: "Contact Us : ",
              children: <TextSpan>[
                TextSpan(text: "xxxxxx", style: TextStyle(fontWeight: FontWeight.bold)),
              ]
            ),
          ),
        ],
      ),
    );
  }
}