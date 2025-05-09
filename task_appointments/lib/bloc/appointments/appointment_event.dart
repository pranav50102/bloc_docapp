part of 'appointment_bloc.dart';

@immutable
sealed class AppointmentEvent {}

class GetList extends AppointmentEvent{

}
class GetListPatients extends AppointmentEvent{

}