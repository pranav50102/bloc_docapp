import 'package:flutter/cupertino.dart';
import 'package:hypersdkflutter/hypersdkflutter.dart';
import 'package:task_appointments/pages/patients.dart';
import 'package:task_appointments/pages/payment.dart';

import '../pages/Apicall.dart';
import '../pages/appointment.dart';
import '../pages/caseHistory.dart';
import '../pages/login.dart';
import '../pages/login2.dart';
import '../pages/ot.dart';
import '../pages/paymentDash.dart';
import '../pages/pre_approve.dart';
import '../pages/profile.dart';
import '../pages/search.dart';

class Routes{

  Map<String, WidgetBuilder> getMap(HyperSDK hyperSDK){
    return {
      '/appointment': (context) => Appointment(),
      '/ot': (context) => Ot(),
      '/search': (context) => Search(),
      '/caseh': (context) => Casehistory(),
      '/profile': (context) => Profile(),
      '/paymentd': (context) => Paymentdash(),
      '/login': (context) => Login(),
      '/pre': (context) => PreApprove(),
      '/login2': (context) => Login2(),
      '/api': (context) => Apicall(),
      '/patients': (context) => Patients(),
      '/payment': (context) => PaymentPage(hyperSDK: hyperSDK, amount: "1"),
    };
  }

}