import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:task_appointments/models/modelsResponce.dart';

import '../models/modelsInput.dart';
import 'header.dart';
part 'baseurl.dart';



class ApiService{

  Future<dynamic> login(LoginInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_Login";
      // Map<String, dynamic> bodyData = {
      //   'IsMobile': body.isMobile,
      //   'Emai': body.email,
      //   'MobileNo': body.mobileNo,
      //   'Password': body.password,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
        responseJson = jsonDecode(response.toString());
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
       // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> forgotPassword(String email,String hashValue) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_ForgotPwd";
      var finalUrl = "$_baseUrl$endPoint?email=$email&hashValue=$hashValue";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio.get(finalUrl)
          .then((value) => {print("resp - ${value.data}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }


  Future<dynamic> listAppointments(ListAppointmentsInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_ListAppointments";

      var bodyData = body.toJson();

      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'ScheduledDate': body.scheduledDate,
      //   'hashValue': body.hashValue,
      // };

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response.toString());
      ListAppointmentsResponse k = ListAppointmentsResponse.fromJson(responseJson);
      print(k.appointments);
      print("api response $responseJson");
    } catch(e){
      print("response ex : $e");
      responseJson = {
        "Status" : 0,
        "Message" : e.toString(),
      };

    }
    return responseJson;
  }

  Future<dynamic> searhPatientsAppt(SearchPatientApptInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_SearchPatientAppt";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'SearchText': body.searchText,
      //   'ScheduledDate': body.scheduledDate,
      //   'hashValue': body.hashValue,
      // };
      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
       responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> listPatients(ListPatientsInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_ListPatients";
      Map<String, dynamic> bodyData = {
        'UserId': body.userId,
        'HospitalId': body.hospitalId,
        'FiscalYearID': body.fiscalYearId,
        'hashValue': body.hashValue,
      };

      // var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> listPatientConsultations(ListPatientConsultationsInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_ListPatientConsultations";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearId,
      //   'PatientId': body.patientId,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> dashboardOPReceipts(DashboardInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_Dashboard_OPReceipts";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'TransactionPeriod': body.transactionPeriod,
      //   'hashValue': body.hashValue
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> viewProfile(int userId,int hospitalId,String hashValue) async {
    dynamic responseJson;
    try {
      var endPoint = "DN_MOBILE_ViewProfile";
      var finalUrl = "$_baseUrl$endPoint?UserId=$userId&HospitalId=$hospitalId&hashValue=$hashValue";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio.get(finalUrl)
          .then((value) => {print("resp - ${value.data}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> updateProfile(UpdateProfileInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_UpdateProfile";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FirstName': body.firstName,
      //   'LastName': body.lastName,
      //   'Designation': body.designation,
      //   'MobileNo': body.mobileNo,
      //   'PAN': body.pan,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> changePassword(ChangePasswordInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/DN_MOBILE_ChangePassword";
      // Map<String, dynamic> bodyData = {
      //   'HospitalId': body.hospitalId,
      //   'UserId': body.userId,
      //   'ExistingPassword': body.existingPassword,
      //   'NewPassword': body.newPassword,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e){
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> ot(OTInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/OT";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'ScheduledDate': body.scheduledDate,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> dashboardIPReceipts(DashboardInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/Dashboard_IPReceipts";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'Transactionperiod': body.transactionPeriod,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> dashboardAdvance(DashboardInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/Dashboard_Advance";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'Transactionperiod': body.transactionPeriod,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> dashboardPharma(DashboardInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/Dashboard_Pharma";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'Transactionperiod': body.transactionPeriod,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  Future<dynamic> dashboardOpticals(DashboardInput body) async {
    dynamic responseJson;
    try {
      var endPoint = "/Dashboard_Opticals";
      // Map<String, dynamic> bodyData = {
      //   'UserId': body.userId,
      //   'HospitalId': body.hospitalId,
      //   'FiscalYearID': body.fiscalYearID,
      //   'Transactionperiod': body..transactionPeriod,
      //   'hashValue': body.hashValue,
      // };

      var bodyData = body.toJson();

      var finalUrl = "$_baseUrl$endPoint";

      final dio = Dio();
      dio.options.headers.addAll(defaultHeader);
      dynamic response;
      await dio
          .post(
        finalUrl,
        data: jsonEncode(bodyData),
      )
          .then((value) => {print("dio-resp - ${value}"), response = value});
      responseJson = jsonDecode(response);
      print("api response $responseJson");
    } catch (e) {
      print("response ex : $e");
      // throw FetchDataException(e.toString());
    }
    return responseJson;
  }

}