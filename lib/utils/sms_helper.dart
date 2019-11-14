import 'package:sms/sms.dart';
void sendSMS(String msg , String receiver){
  SmsSender sender = new SmsSender();
  String address = receiver ;
  SmsMessage message = new SmsMessage(address, msg);
  message.onStateChanged.listen((state) {
    if (state == SmsMessageState.Sent) {
//      print("SMS is sent!");
//      toastMessage("SMS is sent!");
//      Globals.isSMSSent = 1 ;

    } else if (state == SmsMessageState.Delivered) {
      print("SMS is delivered!");
//      toastMessage("SMS is delivered!");
    } else if(state == SmsMessageState.Fail){

//      Globals.isSMSSent = 2 ;
    }
  });
  sender.sendSms(message);
}
