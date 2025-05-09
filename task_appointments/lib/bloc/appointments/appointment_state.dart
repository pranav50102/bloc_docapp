part of 'appointment_bloc.dart';

@immutable
sealed class AppointmentState {
  late ListAppointmentsResponse listAppointmentsResponse;
  late ListPatientsResponse listPatientsResponse;
  AppointmentState({required this.listAppointmentsResponse,required this.listPatientsResponse});
}

final class AppointmentInitial extends AppointmentState {
  AppointmentInitial(): super(listAppointmentsResponse: ListAppointmentsResponse(appointments: [], status: null, message: null),listPatientsResponse: ListPatientsResponse(patients: [], status: null, message: null));
}
final class AppointmentLoading extends AppointmentState {
  AppointmentLoading(): super(listAppointmentsResponse: ListAppointmentsResponse(appointments: [], status: null, message: null),listPatientsResponse: ListPatientsResponse(patients: [], status: null, message: null));
}
final class AppointmentUpdated extends AppointmentState {
  AppointmentUpdated({required ListAppointmentsResponse listAppointmentsResponse,required ListPatientsResponse listPatientsResponse}): super(listAppointmentsResponse: listAppointmentsResponse,listPatientsResponse: listPatientsResponse);
}
final class AppointmentError extends AppointmentState {
  AppointmentError({required ListAppointmentsResponse listAppointmentsResponse,required ListPatientsResponse listPatientsResponse}): super(listAppointmentsResponse: listAppointmentsResponse,listPatientsResponse: listPatientsResponse);
}
