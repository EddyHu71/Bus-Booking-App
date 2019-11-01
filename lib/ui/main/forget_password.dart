import 'package:booking_bus_app/components/modules.dart';

class ForgetPasswords extends StatefulWidget {
  String email;
  ForgetPasswords({
    this.email,
  });
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ForgetPasswordState();
  }
}

class ForgetPasswordState extends State<ForgetPasswords> {
  TextEditingController passController = new TextEditingController();
  TextEditingController newPassController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: WidgetComponent.buttons("Change Password",
                    textColor : Colors.white,
                    bolds: FontWeight.bold,
                    elevas: 2.0,
                    radius: 20.0,
                    padding: EdgeInsets.only(top: 8.0),
                    coloring: Colours.magenta,
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed("change_password_verification");
                    }),
              )
            ],
          ),
        ),
        /*Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  elevation: 2.5,
                    child: WidgetComponent.formField(
                        borders: InputBorder.none,
                        hints: "Enter your old password",
                        label: "Password",
                        prefix: Icon(Icons.lock),
                        controllers: passController,
                ),
            ),
            SizedBox(height: 10.0,),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              elevation: 2.5,
              child: WidgetComponent.formField(
                borders: InputBorder.none,
                hints: "Enter your new password",
                label: "Password",
                prefix: Icon(Icons.lock),
                controllers: newPassController,
              ),
            ),
            SizedBox(height: 10.0,),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              elevation: 2.5,
              child: WidgetComponent.formField(
                borders: InputBorder.none,
                hints: "Re-enter your new password",
                label: "Password",
                prefix: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: WidgetComponent.buttons("Change Password",
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
          ],
        ),*/
      )
    );
  }

}