import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypersdkflutter/hypersdkflutter.dart';
import 'package:task_appointments/bloc/appointments/appointment_bloc.dart';
import 'package:task_appointments/util/routes.dart';
import 'bloc/login/login_bloc.dart';

void main() {

  Routes routes = Routes();
  final HyperSDK hyperSDK = HyperSDK();
  runApp(
      ScreenUtilInit(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppointmentBloc()),
            BlocProvider(create: (context) => LoginBloc()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/payment',
            routes: routes.getMap(hyperSDK),
          ),
        ),
      )
  );
}

