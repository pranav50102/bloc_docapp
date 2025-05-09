import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:hypersdkflutter/hypersdkflutter.dart';
import 'package:task_appointments/pages/appointment.dart';
import 'package:http/http.dart';

class PaymentPage extends StatefulWidget {
  final HyperSDK hyperSDK;
  final String amount;
  const PaymentPage({Key? key, required this.hyperSDK, required this.amount})
      : super(key: key);
  @override
  _PaymentPageState createState() => _PaymentPageState(amount);
}

class _PaymentPageState extends State<PaymentPage> {
  var showLoader = true;
  var processCalled = false;
  var paymentSuccess = false;
  var paymentFailed = false;
  var amount = "0";
  _PaymentPageState(amount) {
    this.amount = amount;
  }

  @override
  Widget build(BuildContext context) {
    // if (!processCalled) {
      startPayment(amount);
    // }
//block:start:onBackPress
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          var backpressResult = await widget.hyperSDK.onBackPress();

          if (backpressResult.toLowerCase() == "true") {
            return false;
          } else {
            return true;
          }
        } else {
          return true;
        }
      },
//block:end:onBackPress
      child: Container(
        color: Colors.white,
        child: Center(
          child: showLoader ? const CircularProgressIndicator() : Container(),
        ),
      ),
    );
  }

  // block:start:startPayment
  void startPayment(amount) async {
    processCalled = true;
    var headers = {
      'Content-Type': 'application/json',
    };

    var requestBody = {
      // block:start:updateOrderID
      "order_id": "test" + (new Random().nextInt(900000) + 100000).toString(),
      "amount": amount
      // block:end:updateOrderID
    };

    // block:start:await-http-post-function
    // 10.0.2.2 Works only on emulator
    print("in start payment");

    // var response = await post(
    //     Uri.parse('http://10.0.2.2:5000/initiateJuspayPayment'),
    //     headers: headers,
    //     body: jsonEncode(requestBody));
    // print(response);
    // block:end:await-http-post-function
    var response = {
      "orderId" : "123",
      "customerId" : "123",
      "amount" : "123",
      "payment_page_client_id" : "123",
      "return_url" : "123",
    };

      // Map<String, dynamic> jsonResponse = jsonDecode(response.body);

      // block:start:openPaymentPage
        try{
      widget.hyperSDK.openPaymentPage(response, hyperSDKCallbackHandler);
    }
    catch(e){
          print(e);
    }
    // block:end:openPaymentPage
    //
    // else {
    //   throw Exception(
    //       'API call failed with status code ${response.statusCode}');
    // }
    ;
  }
  // block:end:startPayment

  // block:start:create-hyper-callback
  void hyperSDKCallbackHandler(MethodCall methodCall) {
    switch (methodCall.method) {
      case "hide_loader":
        setState(() {
          showLoader = false;
        });
        break;
      case "process_result":
        var args = {};

        try {
          args = json.decode(methodCall.arguments);
        } catch (e) {
          print(e);
        }
        var innerPayload = args["payload"] ?? {};
        var status = innerPayload["status"] ?? " ";
        var orderId = args['orderId'];

        switch (status) {
          case "backpressed":
          case "user_aborted":
            {
              Navigator.pop(context);
            }
            break;
          default:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Appointment(),
                    settings: RouteSettings(arguments: orderId)));
        }
    }
  }
// block:end:create-hyper-callback
}

