import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main.dart' as MainScreen;
void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.grey
      ),
      home: SplashPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class SplashPage extends StatefulWidget {
  SplashPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _counter = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: const Color(0xff384789),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(

                    height: MediaQuery.of(context).size.height  - (MediaQuery.of(context).size.width * .90),
                    width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width * .30),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage("lib/images/ayos_logo.png")
                        )
                    ),

                  ),
                ],
              )
              , Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Checking mobile number registration please wait")
                  ,SpinKitDoubleBounce(
                    color: Colors.blueAccent,
                    size: 50.0,
                  )
                ],
              )


            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
