import 'package:booking_bus_app/components/modules.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  var loading = true;
  var obs = true;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

/*  void getLogin() async {
    setState(() {
      loading = true;
    });
    var conn = await http.post(AppUrl.APP_URL_LOGIN, body:  {

    });
    if (conn.body == "login") {
        LoadingScreen(loading: loading);
    } else {
      Toast.show("Login failed",
          context,
          duration: Toast.LENGTH_SHORT,
          gravity: Toast.BOTTOM);
    }
    setState(() {
      loading = false;
    });
  }*/


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text("LOGIN", style: TextStyle(
                  fontSize: 32.0,
                  color: Colours.darkBlue,
                  fontWeight: FontWeight.bold
                  ),
              ),
                SizedBox(height: 32.0,),
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  elevation: 2.5,
                  child: WidgetComponent.formField(
                    borders: InputBorder.none,
                    inputType: TextInputType.number,
                    hints: "Phone Number",
                    prefix: Icon(Icons.phone),
                    controllers: emailController,
                  ),
                ),
/*                SizedBox(height: 16.0,),
                WidgetComponent.formField(
                    borders: InputBorder.none,
                    hints: "Password",
                    prefix: Icon(Icons.lock),
                    suffix: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                      setState(() {
                        obs = !obs;
                      });
                    }),
                    secure: obs,
                  controllers: passController
                ),*/
                SizedBox(height: 20.0,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: WidgetComponent.buttons("Get OTP",
                          textColor : Colors.white,
                          bolds: FontWeight.bold,
                          elevas: 2.0,
                          radius: 20.0,
                          padding: EdgeInsets.only(top: 8.0),
                          coloring: Colours.magenta,
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, "login_verification");
                          }),
                    )
                  ],
                ),
/*                SizedBox(
                  height: 32.0,),
                Text("or login with", style: TextStyle(fontSize: 12.0, color: Colors.grey),),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                  WidgetComponent.flatButton(onPressed: (){

                  }, buttons: Image.asset("assets/icons/facebook.png", width: 25.0, height: 25.0,)),
                    WidgetComponent.flatButton(onPressed: (){

                    }, buttons: Image.asset("assets/icons/google.png", width: 25.0, height: 25.0,)),
                  ],
                )*/
              ],
            ),
          ),
      )
    );
  }

}