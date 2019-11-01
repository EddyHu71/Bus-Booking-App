import 'package:booking_bus_app/components/modules.dart';

class MyAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAccountState();
  }
}

class MyAccountState extends State<MyAccount> {
  File images;
  var loads = true;
  var imageProfile = Image.asset("assets/images/imageprofile.jpg", width: 100.0, height: 100.0,);
  var names = Text("Names", style: TextStyle(fontWeight: FontWeight.w500),);
  var phoneNumber = Text("+91 8511369541", style: TextStyle(color: Colors.grey),);

  void getImages(imagesources) async {
    var image = await ImagePicker.pickImage(source: imagesources);

    setState(() {
      images = image;
    });

  }


  @override
  Widget build(BuildContext context) {
    void notifLogOut() async {
      return showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure want to exit?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
          actions: <Widget>[
            FlatButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Yes")),
            FlatButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("No")),
          ],
        );
      });
    }

    void notifPassword() async {
      return showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure want to change password?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
          actions: <Widget>[
            FlatButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed("change_password_verification");
            }, child: Text("Yes")),
            FlatButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("No")),
          ],
        );
      });
    }

  void alerts() async {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Choose your image", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        actions: <Widget>[
          FlatButton(onPressed: (){
            getImages(ImageSource.gallery);
            Navigator.pop(context);
          }, child: Text("Gallery")),
          FlatButton(onPressed: (){
            getImages(ImageSource.camera);
            Navigator.pop(context);
            }, child: Text("Camera")),
        ],
      );
    });
  }


    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: images == null ? imageProfile : Image.file(images,  width: 100.0, height: 100.0,),
                    onTap: (){
                      alerts();
                    },
                  ),
                  SizedBox(height: 6.0,),
                  names,
                  SizedBox(height: 6.0,),
                  phoneNumber,
                ],
              )
            ),
            WidgetComponent.listiles("Previous Ride", leads: Icons.directions_run, icons: Icons.arrow_forward_ios, onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PreviousRide()));
            }),
            Divider(color: Colors.grey,),
            WidgetComponent.listiles("Change Password", leads: Icons.lock, icons: Icons.arrow_forward_ios, onPressed: (){
              notifPassword();
            }),
            Divider(color: Colors.grey,),
            WidgetComponent.listiles("Location Settings", leads: Icons.location_city, icons: Icons.arrow_forward_ios, onPressed: (){

            }),
            Divider(color: Colors.grey,),
            WidgetComponent.listiles("Log Out", leads: Icons.exit_to_app, icons: Icons.arrow_forward_ios, onPressed: () {
              notifLogOut();
            }),
            Divider(color: Colors.grey,),
          ],
        ),
      ),
    );
  }

}