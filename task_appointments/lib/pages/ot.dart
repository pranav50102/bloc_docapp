import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ot extends StatefulWidget {
  const Ot({super.key});

  @override
  State<Ot> createState() => _OtState();
}

class _OtState extends State<Ot> {

  late int _selectedItem ;


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
                          'OT Surgery List',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding:  EdgeInsets.only(right: deviceWidth*19/360),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            onPressed: (){
                              _showAlertDialog(context);
                            },
                            elevation: 0,
                            backgroundColor: Color(0xff1D8D9C),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.r)),
                            child: Image(
                              image: AssetImage('assets/Vector7.png'),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                            width: 25.w,
                            child: Image(
                              image: AssetImage('assets/group75.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17.w,vertical: deviceHeight*13/790),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: deviceHeight*30/790,
                      width: deviceWidth-42,
                      child: SearchBar(
                        leading: SizedBox(
                          child: Icon(
                            Icons.search,
                            color: Color(0xFF1D8D9C),
                            size: 18.r,
                          ),
                        ),
                        shape: WidgetStatePropertyAll<OutlinedBorder>(
                            RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),)
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
                    SizedBox(height: deviceHeight*17/790,),
                    SizedBox(
                      height: deviceHeight*30/790,
                      child: Card(
                        color: Color(0xFFFFFFFF),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Admitted : 30',
                              style: TextStyle(
                                color: Color(0xFF1D8D9C),
                              ),
                            ),
                            Text(
                              'Advised : 04',
                              style: TextStyle(
                                color: Color(0xFF1D8D9C),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10.w, deviceHeight*21/790,0,0),
                      child: Row(
                        children: [
                          Container(
                            width: 9.w,
                            height: 9.h,
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
                            width: 9.w,
                            height: 9.h,
                            decoration:  BoxDecoration(
                              color: Color(0xffF75555),
                              borderRadius:  BorderRadius.all( Radius.elliptical(5, 5)),
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
                    SingleChildScrollView(
                      child: SizedBox(
                        height: deviceHeight*500/790,
                        child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index){
                              return SizedBox(
                                height: deviceHeight*86/790,
                                child: Card(
                                  elevation: 8,
                                  color: Color(0xFFFFFFFF),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 0,),
                                      VerticalDivider(
                                        color: Color(0xFF07F702),
                                        thickness: 3,
                                        width: 30.w,
                                        indent: 14.h,
                                        endIndent: 14.h,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 12.h),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'G. Naravani',
                                              style: TextStyle(
                                                color: Color(0xFF1D8D9C),
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: deviceHeight*9/790),
                                            Text(
                                              'Mobile No : 12345678910',
                                              style: TextStyle(
                                                color: Color(0xFF1D8D9C),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(height: deviceHeight*6/790,),
                                            Text(
                                              'Specialization : Orthopedic',
                                              style: TextStyle(
                                                color: Color(0xFF1D8D9C),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(100.w,20.h,0,0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'MR NO : JEH100498',
                                              style: TextStyle(
                                                color: Color(0xFF1D8D9C),
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                            SizedBox(height: deviceHeight*6/790),
                                            Text(
                                              'Age : 30 Y / F',
                                              style: TextStyle(
                                                color: Color(0xFF1D8D9C),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(height: deviceHeight*5/790),
                                            Text(
                                              'Time : 11:30 AM',
                                              style: TextStyle(
                                                color: Color(0xFF1D8D9C),
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
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

  List <String> _list = [
    'All',
    'Cornea & Anterior Segment',
    'Glaucoma',
    'Retina',
    'Oculoplasty',
    'Paediatric Ophthalmology',
    'Comprehensive Ophthalmology',
    'Low Vision & CSE',
    'Emergency',
    'Rehab',
    'General',
    'Catract',
  ];


  void _showAlertDialog(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var h = deviceHeight/790;
    var w = deviceWidth/360;
    int spec = 0;
    int dept = 0;
    int doc = 0;
    int date = 0;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context,setState){
            return  AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              content:  Container(
                padding: EdgeInsets.only(top: h*116),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h*50,
                      width: w*246,
                      child: ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          'Specialization',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18.sp,
                          ),
                        ),
                        trailing: Icon(
                          spec == 0? Icons.arrow_drop_up : Icons.arrow_drop_down,
                          color: Color(0xFF1D8D9C),
                        ),
                        onTap: (){
                          setState(() {
                            if(spec == 0){
                              spec = 1;
                            }
                            else if(spec == 1){
                              spec = 0;
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: h*50,
                      width: w*246,
                      child: ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          'Department',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18.sp,
                          ),
                        ),
                        trailing: Icon(
                          dept == 0? Icons.arrow_drop_up : Icons.arrow_drop_down,
                          color: Color(0xFF1D8D9C),
                        ),
                        onTap: (){
                          setState(() {
                            if(dept == 0){
                              dept = 1;
                            }
                            else if(dept == 1){
                              dept = 0;
                            }
                          });
                        },
                      ),
                    ),
                    if(dept == 1)
                      Expanded(
                        child: SizedBox(
                          height: h*335,
                          width: w*246,
                          child: ListView.builder(
                              itemCount: _list.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context,int index){
                                return SizedBox(
                                  height: h*35,
                                  child: ListTile(
                                    tileColor: Color(0xFFFFFFFF),
                                    onTap: (){

                                    },
                                    title: Padding(
                                      padding: EdgeInsets.only(bottom: h*5),
                                      child: Text(_list[index],
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          color: Color(0xFF1D8D9C),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                      ),

                    if(dept == 0)
                      Column(
                        children: [
                          SizedBox(
                            height: h*50,
                            width: w*246,
                            child: ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                'Doctor',
                                style: TextStyle(
                                  color: Color(0xFF1D8D9C),
                                  fontSize: 18.sp,
                                ),
                              ),
                              trailing: Icon(
                                doc == 0? Icons.arrow_drop_up : Icons.arrow_drop_down,
                                color: Color(0xFF1D8D9C),
                              ),
                              onTap: (){
                                setState(() {
                                  if(doc == 0){
                                    doc = 1;
                                  }
                                  else if(doc == 1){
                                    doc = 0;
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: h*50,
                            width: w*246,
                            child: ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                'Date',
                                style: TextStyle(
                                  color: Color(0xFF1D8D9C),
                                  fontSize: 18.sp,
                                ),
                              ),
                              trailing: Icon(
                                date == 0? Icons.arrow_drop_up : Icons.arrow_drop_down,
                                color: Color(0xFF1D8D9C),
                              ),
                              onTap: (){
                                setState(() {
                                  if(date == 0){
                                    date = 1;
                                  }
                                  else if(date == 1){
                                    date = 0;
                                  }
                                });
                              },
                            ),
                          ),

                          if(date == 1)
                            Container(
                              height: h*72,
                              width: w*246,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  side: BorderSide(
                                    color: Color(0xFF1D8D9C),
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(w*20, h*14,w*20,0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.calendar_month,
                                                color: Color(0xFF1D8D9C),
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('From date',
                                                    style: TextStyle(
                                                      color: Color(0xFF1D8D9C),
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                  Text('01 - APR - 2024',
                                                    style: TextStyle(
                                                      color: Color(0xFF1D8D9C),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 8.sp,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.calendar_month,
                                                color: Color(0xFF1D8D9C),
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('To date',
                                                    style: TextStyle(
                                                      color: Color(0xFF1D8D9C),
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                  Text('07 - APR - 2024',
                                                    style: TextStyle(
                                                      color: Color(0xFF1D8D9C),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, h*7.4, 0, 0),
                                        child: SizedBox(
                                          height: h*12.52,
                                          width: w*37.52,
                                          child: FloatingActionButton(
                                              backgroundColor: Color(0xFF1D8D9C),
                                              onPressed: (){},
                                              elevation: 2,
                                              child: Text('Apply',
                                                style: TextStyle(
                                                  fontSize: 8.sp,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          SizedBox(
                            height: h*16,
                          ),
                          SizedBox(
                            height: 26,
                            width: 26,
                            child: FloatingActionButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              backgroundColor: Color(0xFFFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: SizedBox(
                                  height: 11.57.h,
                                  width: 12.73.w,
                                  child: Image(image: AssetImage('assets/clear.png'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
