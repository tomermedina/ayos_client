import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
int currentIndex = 0;
double screenWidth  = 0;
double screenHeight = 0 ;
double currentLat = 0 ;
double currentLong = 0;
List <String> selectedServiceList ;
String selectedServices = "";
String selectedTech = "";
String serverNumber = "+639431379554";
String customerNumber = "+639431379554";
int selectedServiceCtr = 0;
bool isConnected = false;
int isSMSSent = 0 ;
int isHaveRequest = 0 ;

void toastMessage(String msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIos: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 24.0
  );
}