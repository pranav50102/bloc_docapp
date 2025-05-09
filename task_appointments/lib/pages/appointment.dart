import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:task_appointments/bloc/appointments/appointment_bloc.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {

  @override
  void initState(){
    BlocProvider.of<AppointmentBloc>(context).add(GetList());
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF1F1F1),
          body: Column(
            children: [
              Container(
                width: 1.sw,
                height: 91.h,
                color: Color(0xFF1D8D9C),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              
                            }, 
                            icon: Icon(
                                Icons.arrow_back_sharp,
                              color: Color(0xFFFFFFFF),
                            ),
                        ),
                        Text(
                          'Appointments',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 19.w),
                      child: Image(
                          image: AssetImage('assets/group75.png'),
                        height: 25.r,
                        width: 25.r,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 13.h),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 30.h,
                      child: SearchBar(
                        leading: SizedBox(
                          child: Icon(
                              Icons.search,
                            color: Color(0xFF1D8D9C),
                            size: 18.sp,
                          ),
                        ),
                        shape: WidgetStatePropertyAll<OutlinedBorder>(
                          RoundedRectangleBorder( borderRadius: BorderRadius.circular(6.r),)
                        ),
                        hintText: 'Search by Patient Name / Mobile Number',
                        hintStyle: WidgetStatePropertyAll<TextStyle>(
                          TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          Color(0xFFFFFFFF)
                        ),
                        trailing: [
                          Icon(
                            Icons.close,
                            color: Color(0xFF1D8D9C),
                            size: 18.sp,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10.w, 21.h,10.w,0),
                      child: Row(
                        children: [
                          Container(
                            width: 9.r,
                            height: 9.r,
                            decoration:  BoxDecoration(
                              color: Color(0xff50F702),
                              borderRadius:  BorderRadius.all( Radius.elliptical(5.r, 5.r)),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Text(
                              'Booked',
                            style: TextStyle(
                              color: Color(0xFF1D8D9C),
                              fontSize: 11.sp,
                            ),
                          ),
                          SizedBox(width: 16.w,),
                          Container(
                            width: 9.r,
                            height: 9.r,
                            decoration:  BoxDecoration(
                              color: Color(0xffF75555),
                              borderRadius:  BorderRadius.all( Radius.elliptical(5.r, 5.r)),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Text(
                            'Cancelled',
                            style: TextStyle(
                              color: Color(0xFF1D8D9C),
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h,),
                    BlocBuilder<AppointmentBloc, AppointmentState>(
                      builder: (context, state) {
                        print(state);
                          if(state is AppointmentUpdated){
                            return SizedBox(
                              height: 450.h,
                              child: ListView.builder(
                                  itemCount: state.listAppointmentsResponse.appointments.length,
                                  itemBuilder: (BuildContext context, int index){
                                    return SizedBox(
                                      height: 86.h,
                                      child: Card(
                                        elevation: 8.h,
                                        color: Color(0xFFFFFFFF),
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10.w, 10.h,10.w,10.h),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [

                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(vertical: 5.h),
                                                      child: VerticalDivider(
                                                        color: state.listAppointmentsResponse.appointments[index].apptStatus == 'Scheduled'?Color(0xFF07F702) : Color(0xffF75555),
                                                        thickness: 3.r,
                                                        width: 30.w,
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          state.listAppointmentsResponse.appointments[index].patientName.toString(),
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 11.sp,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),

                                                        Text(
                                                          'Mobile No : ${state.listAppointmentsResponse.appointments[index].mobileNo.toString()}',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 9.sp,
                                                          ),
                                                        ),

                                                        Text(
                                                          'Specialization : ${state.listAppointmentsResponse.appointments[index].specialization.toString()}',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 9.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'MRNO : ${state.listAppointmentsResponse.appointments[index].MRNO.toString()}',
                                                      style: TextStyle(
                                                        color: Color(0xFF1D8D9C),
                                                        fontSize: 8.sp,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Age : ${state.listAppointmentsResponse.appointments[index].age.toString()}',
                                                      style: TextStyle(
                                                        color: Color(0xFF1D8D9C),
                                                        fontSize: 9.sp,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Time : ${state.listAppointmentsResponse.appointments[index].time.toString()}',
                                                      style: TextStyle(
                                                        color: Color(0xFF1D8D9C),
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            );
                          }
                          else if(state is AppointmentLoading){
                            return Center(
                              child: Padding(
                                padding:  EdgeInsets.only(top: 100),
                                child: SpinKitSquareCircle(
                                  color: Colors.orange,
                                  size: 80.0,
                                ),
                              ),
                            );
                          }
                          else{
                            return Center(
                              child: Text(state.listAppointmentsResponse.message.toString()),
                            );
                          }
  },
)
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
