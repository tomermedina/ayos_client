import 'package:flutter/material.dart';
import 'splash.dart' as SplashScreen;
import '../utils/sms_helper.dart' as SMS;
 
void main() => runApp(RegistrationScreen());

class RegistrationScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RegistrationPage(title: '@YoS'),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}



class _RegistrationPageState extends State<RegistrationPage> {
  @override
  void initState(){
    SMS.sendSMS("TEST" , "09358589457");
  }

  int _counter = 0;
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Mobile Number Registration'),
      content: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Registering your mobile number please wait...")
            ],
          ) ,

        ],
      ),
      isActive: true,


    ),
    Step(
      title: Text('Confirming Registration'),
      content: Text('World!'),
      isActive: false,
        state: StepState.disabled
    ),
    Step(
      title: Text('Registration Completed'),
      content: Text('Hello World!'),

      state: StepState.disabled ,
      isActive: false,


    ),
  ];
  static void next(){

  }
  static Widget widgetButton(title , VoidCallback method){
    return RaisedButton(
      padding: const EdgeInsets.all(8.0),
      textColor: Colors.white,
      color: Colors.blue,
      child: new Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
//        title:
//        Image.asset('lib/images/ayos_logo.png', fit: BoxFit.cover)
//        Text(widget.title , style: TextStyle(color: Colors.black),),
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.vertical(
//            bottom: Radius.circular(20),
//
//          ),
//        ),
      ),
        body: SingleChildScrollView (
          child: Column(
            children: <Widget>[

              Container(

                height: MediaQuery.of(context).size.height  - (MediaQuery.of(context).size.height * .50) ,
                width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height * .25),
                decoration: BoxDecoration(
                    image: DecorationImage(

                        image: ExactAssetImage("lib/images/ayos_logo.png")
                    )
                ),
              ),
              Container(
                child: Stepper(
                  currentStep: this.current_step,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      current_step = step;
                    });
                  },
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                      Container(
                      ),
//                  onStepContinue: () {
//                    setState(() {
//                      if (current_step < steps.length - 1) {
//                        current_step = current_step + 1;
//                      } else {
//                        current_step = 0;
//                      }
//                    });
//                  },
//                  onStepCancel: () {
//                    setState(() {
//                      if (current_step > 0) {
//                        current_step = current_step - 1;
//                      } else {
//                        current_step = 0;
//                      }
//                    });
//                  },
                ),
              )
            ],
          ),

        )

    );
  }
}
