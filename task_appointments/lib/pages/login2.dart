import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login/login_bloc.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            print(state);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if(state is LoginSuccess)
                    Text(state.loginResponse.userDetails!.firstName.toString()),
                    Text(state.loginResponse.userDetails!.lastName.toString()),
                    Text("UserId : ${state.loginResponse.userDetails!.userId.toString()}"),
                    Text("Hospitalid : ${state.loginResponse.userDetails!.hospitalId.toString()}"),
                    Text("Fiscalyearid : ${state.loginResponse.userDetails!.fiscalYearId.toString()}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
