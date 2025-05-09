import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_appointments/Api/apiService.dart';
import 'package:task_appointments/models/modelsInput.dart';
import 'package:task_appointments/models/modelsResponce.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  ApiService apiService = new ApiService();
  LoginBloc() : super(LoginLoggedOut()) {
    on<LoginUser>((LoginUser event,Emitter<LoginState> emit) async{
      emit(LoginLoading());
      try{
        var data = await apiService.login(event.loginInput);
        print("before model");
        LoginResponse a = LoginResponse.fromJson(data);

         print(a.status);
         print(a.userDetails!.firstName);

        if(a.status==1){
          // a.userDetails?.firstName = data["UserDetails"]["FirstName"];
          // a.userDetails?.lastName = data["UserDetails"]["LastName"];
          // a.userDetails?.fiscalYearId = data["UserDetails"]["FiscalYearId"];
          // a.userDetails?.userId = data["UserDetails"]["UserId"];
          // a.userDetails?.hospitalId = data["UserDetails"]["HospitalId"];
          emit(LoginSuccess(loginResponse: a));
        }
        else if(a.status==0){
          emit(LoginFailure(loginResponse: a));
        }
        else{
          emit(LoginError());
        }
      }
      catch(e){
        print(e);
        emit(LoginError());
      }
    });
  }
}
