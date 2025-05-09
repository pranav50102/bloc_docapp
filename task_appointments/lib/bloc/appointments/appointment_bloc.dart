import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_appointments/models/modelsResponce.dart';

import '../../Api/apiService.dart';
import '../../models/modelsInput.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  ApiService apiService = new ApiService();
  AppointmentBloc() : super(AppointmentInitial()) {
    on<GetList>((GetList event,Emitter<AppointmentState> emit) async{

      emit(AppointmentLoading());

      ListAppointmentsInput listAppointmentsInput = new ListAppointmentsInput(
          userId: 1,
          hospitalId: 1,
          fiscalYearID: 2,
          scheduledDate: "2024-10-28" ,
          hashValue: "4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8"
      );

      final data =  await apiService.listAppointments(listAppointmentsInput);
      print('before initialization');
      if(data["Status"]==1){
        ListAppointmentsResponse a = ListAppointmentsResponse.fromJson(data);
        print("list obj");
        print(a);
        emit(AppointmentUpdated(listAppointmentsResponse: a,listPatientsResponse:ListPatientsResponse(patients: [], status: null, message: null)));
      }
      else{
        ListAppointmentsResponse a = ListAppointmentsResponse(appointments: [], status: null, message: data["Message"]);
        emit(AppointmentError(listAppointmentsResponse: a,listPatientsResponse: ListPatientsResponse(patients: [], status: null, message: null)));
      }
            }
    );

    on<GetListPatients>((GetListPatients event,Emitter<AppointmentState> emit)async{

      emit(AppointmentLoading());

      ListPatientsInput listPatientsInput = ListPatientsInput(
          userId: 1,
          hospitalId:1,
          fiscalYearId: 2,
          hashValue: "4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8",
      );

      final data =  await apiService.listPatients(listPatientsInput);

      if(data["Status"]==1){
        ListPatientsResponse a = ListPatientsResponse.fromJson(data);
        print("list obj");
        print(a);
        emit(AppointmentUpdated(listAppointmentsResponse: ListAppointmentsResponse(appointments: [], status: null, message: null),listPatientsResponse:a));
      }
      else{
        ListPatientsResponse a = ListPatientsResponse(patients: [], status: null, message: data["Message"]);
        emit(AppointmentError(listAppointmentsResponse: ListAppointmentsResponse(appointments: [], status: null, message: null),listPatientsResponse: a));
      }
    }
    );

  }
}
