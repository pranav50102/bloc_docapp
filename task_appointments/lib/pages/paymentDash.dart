import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Paymentdash extends StatefulWidget {
  const Paymentdash({super.key});

  @override
  State<Paymentdash> createState() => _PaymentdashState();
}

class _PaymentdashState extends State<Paymentdash> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF1F1F1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight*178/790,
                color: Color(0xFF1D8D9C),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(deviceWidth*11/360, deviceHeight*32/790,deviceWidth*19/360 , 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, deviceHeight*31/790, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: deviceWidth*110/360,
                              height: deviceHeight*53/790,
                              child: Card(
                                color: Color(0xFF125C66),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Receipts',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    Text('₹ 10,00,00,000.00',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: deviceWidth*110/360,
                              height: deviceHeight*53/790,
                              child: Card(
                                color: Color(0xFF125C66),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Payments',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    Text('₹ 10,00,00,000.00',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: deviceWidth*110/360,
                              height: deviceHeight*53/790,
                              child: Card(
                                color: Color(0xFF125C66),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Pending',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    Text('₹ 10,00,00,000.00',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: deviceWidth*4/360),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: deviceHeight*5/790),
                                  child: SizedBox(
                                    height: 32.72.h,
                                      width: 59.w,
                                      child: Image(image: AssetImage('assets/DOCNyleLogo.png'))
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: deviceWidth*10/360),
                                  child: Text('DocNyle',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28.sp,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: deviceHeight*9/790),
                            child: SizedBox(
                              width: 25.w,
                              height: 25.h,
                              child: Image(image: AssetImage('assets/group75.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: deviceHeight*37/790 ,horizontal: deviceWidth*17/360),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('  OP Receipts:',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: deviceHeight*13/790),
                          child: SizedBox(
                            width: deviceWidth*324/360,
                            height: deviceHeight*150/790,
                            child: Card(
                              color: Color(0xFFFFFFFF),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*7/360,vertical:  deviceHeight*28/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Consultation',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text('Lab',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*106/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*4/360,vertical:  deviceHeight*28/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Procedure',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text('Investigation',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*106/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*4/360,vertical:  deviceHeight*28/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Others',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text('Pending',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*7/360, deviceHeight*26/790, deviceWidth*7/360, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFF1D8D9C),
                                    onPressed: (){},
                                    child: Text('Weekly Payments',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Monthly Payments',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Pending Payment',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: deviceHeight*22/790,),
                        Text('  IP Receipts:',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: deviceHeight*13/790),
                          child: SizedBox(
                            width: deviceWidth*324/360,
                            height: deviceHeight*80/790,
                            child: Card(
                              color: Color(0xFFFFFFFF),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*18/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Surgery Package',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*42/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*18/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Surgery Pending',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*7/360, deviceHeight*17/790, deviceWidth*7/360, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Weekly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFF1D8D9C),
                                    onPressed: (){},
                                    child: Text('Monthly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Pending Payment',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: deviceHeight*22/790,),
                        Text('  Advance:',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: deviceHeight*13/790),
                          child: SizedBox(
                            width: deviceWidth*324/360,
                            height: deviceHeight*80/790,
                            child: Card(
                              color: Color(0xFFFFFFFF),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*18/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Advance Receipts',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*42/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*18/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Advance Returns',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*7/360, deviceHeight*17/790, deviceWidth*7/360, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Weekly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Monthly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFF1D8D9C),
                                    onPressed: (){},
                                    child: Text('Pending Payment',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: deviceHeight*22/790,),
                        Text('  Pharmacy:',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: deviceHeight*13/790),
                          child: SizedBox(
                            width: deviceWidth*324/360,
                            height: deviceHeight*80/790,
                            child: Card(
                              color: Color(0xFFFFFFFF),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*7/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Receipts',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*42/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*4/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Paid',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*42/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*4/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Pending',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*7/360, deviceHeight*17/790, deviceWidth*7/360, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFF1D8D9C),
                                    onPressed: (){},
                                    child: Text('Weekly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Monthly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Pending Payment',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: deviceHeight*22/790,),
                        Text('  Opticals:',
                          style: TextStyle(
                            color: Color(0xFF1D8D9C),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: deviceHeight*13/790),
                          child: SizedBox(
                            width: deviceWidth*324/360,
                            height: deviceHeight*80/790,
                            child: Card(
                              color: Color(0xFFFFFFFF),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*7/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Receipts',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*42/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*4/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Paid',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*42/790,
                                    child: VerticalDivider(
                                      color: Color(0xFF008080),
                                      thickness: 1,
                                      width: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:  deviceWidth*4/360,vertical:  deviceHeight*17/790),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Pending',
                                              style: TextStyle(
                                                color: Color(0xFF008080),
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text('₹ 10,00,00,000.00',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*7/360, deviceHeight*17/790, deviceWidth*7/360, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Weekly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFF1D8D9C),
                                    onPressed: (){},
                                    child: Text('Monthly Payments',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(
                                  height: deviceHeight*30/790,
                                  width: deviceWidth*99/360,
                                  child: FloatingActionButton(
                                    elevation: 2,
                                    backgroundColor: Color(0xFFF79955),
                                    onPressed: (){},
                                    child: Text('Pending Payment',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
