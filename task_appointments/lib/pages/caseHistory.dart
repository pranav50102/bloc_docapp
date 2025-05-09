import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Casehistory extends StatefulWidget {
  const Casehistory({super.key});

  @override
  State<Casehistory> createState() => _CasehistoryState();
}

class _CasehistoryState extends State<Casehistory> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF1F1F1),
          body: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight*91/790,
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
                          'Patient History',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17.w,vertical: deviceHeight*13/790),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: deviceHeight*20/790,),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: deviceHeight*550/790,
                        child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index){
                              return SizedBox(
                                height: deviceHeight*137/790,
                                child: Card(
                                  elevation: 8,
                                  color: Color(0xFFFFFFFF),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height : deviceHeight*52/790,
                                              child: VerticalDivider(
                                                color: Color(0xFFF79955),
                                                thickness: 2.5,
                                                width: 0,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 8.h),
                                                child: Text('  25-MAY-2024  ',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Color(0xff1D8D9C),
                                                  ),
                                                )),
                                            SizedBox(
                                              height : deviceHeight*78/790,

                                              child: VerticalDivider(
                                                color: Color(0xFFB7B7B7),
                                                thickness: 1,
                                                width: 0,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: deviceWidth*22/360),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Appointment with:',
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      color: Color(0xff1D8D9C),
                                                    ),),
                                                  Container(
                                                    padding: EdgeInsets.only(top: deviceHeight*4/790),
                                                    child: Text('Dr. Vengal Rao',
                                                      style: TextStyle(
                                                        fontSize: 13.sp,
                                                        color: Color(0xff1D8D9C),
                                                        fontWeight: FontWeight.bold,
                                                      ),),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(top: deviceHeight*6/790),
                                                    child: Text('Specialization : ENT Specialist',
                                                      style: TextStyle(
                                                        fontSize: 8.sp,
                                                        color: Color(0xff1D8D9C),
                                                      ),),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(top: deviceHeight*6/790),
                                                    child: Text('illness : Migraine Headache',
                                                      style: TextStyle(
                                                        fontSize: 8.sp,
                                                        color: Color(0xff1D8D9C),
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: deviceWidth*324/360,
                                        height: deviceHeight*36/790,

                                        decoration: BoxDecoration(
                                            color: Color(0xffE9E9E9),
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.only(left: deviceWidth*210/360),
                                          child: Row(
                                            children: [
                                              Container(
                                                width : 22.w,
                                                height: 22.h,
                                                decoration:  BoxDecoration(
                                                  color: Color(0xffFFFFFF),
                                                  borderRadius:  BorderRadius.all( Radius.elliptical(25.r, 25.r)),
                                                ),
                                                child: Image(image: AssetImage('assets/medical-report4.png')),
                                              ),
                                              SizedBox(width: deviceWidth*8/360,),
                                              Text('Health Records',
                                                style: TextStyle(
                                                  color: Color(0xff1D8D9C),
                                                  fontSize: 9.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
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
