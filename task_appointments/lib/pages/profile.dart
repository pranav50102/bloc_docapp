import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_appointments/main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFF1F1F1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: deviceHeight*15/790),
                width: deviceWidth,
                height: deviceHeight*345/790,
                color: Color(0xFF1D8D9C),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          'My Profile',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: deviceHeight*30/790),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 122.87,
                            width: 122.87,
                              child: Image(
                                fit: BoxFit.cover,
                                  image: AssetImage('assets/group75.png'),
                              ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: deviceHeight*22/790),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Dr. Vengal Rao',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                SizedBox(width: deviceWidth*4/360,),
                                SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: FloatingActionButton(
                                    elevation: 4,
                                    child: Image(
                                        image: AssetImage('assets/QRCode.png',),
                                      fit: BoxFit.cover,
                                    ),
                                    onPressed: (){
                                      _showAlertDialog(context);
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: deviceHeight*7/790),
                            child: Text('ENT Specialist - (UID : 987654321)',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: deviceHeight*6/360),
                            child: SizedBox(
                              height: deviceHeight*22/790,
                              width: deviceWidth*80/360,
                              child: FloatingActionButton(
                                child: Text('Edit Profile',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      width: 1,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  foregroundColor: Color(0xFFFFFFFF),
                                  backgroundColor: Color(0xFF1D8D9C),
                                  onPressed: (){

                                  },

                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(deviceWidth*19/360,deviceHeight*20/790 , deviceWidth*24/360, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth*8/360),
                          child: Text('FirstName',
                            style: TextStyle(
                              color: Color(0xFF1D8D9C),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: deviceHeight*4/790),
                          width: deviceWidth*316/360,
                          height: deviceHeight*54/790,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            color: Color(0xFFFFFFFF),
                            child: Padding(
                              padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*12/790, 0, 0),
                              child: Text(
                                  'Vengal',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*8/360,deviceHeight*11/790,0,0),
                          child: Text('LastName',
                            style: TextStyle(
                              color: Color(0xFF1D8D9C),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: deviceHeight*4/790),
                          width: deviceWidth*316/360,
                          height: deviceHeight*54/790,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            color: Color(0xFFFFFFFF),
                            child: Padding(
                              padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*12/790, 0, 0),
                              child: Text(
                                'Rao',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(deviceWidth*8/360,deviceHeight*11/790,0,0),
                          child: Text('Designation',
                            style: TextStyle(
                              color: Color(0xFF1D8D9C),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: deviceHeight*4/790),
                          width: deviceWidth*316/360,
                          height: deviceHeight*54/790,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            color: Color(0xFFFFFFFF),
                            child: Padding(
                              padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*12/790, 0, 0),
                              child: Text(
                                'Doctor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(deviceWidth*8/360,deviceHeight*11/790,0,0),
                                  child: Text('Mobile Number',
                                    style: TextStyle(
                                      color: Color(0xFF1D8D9C),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: deviceHeight*4/790),
                                  width: deviceWidth*150/360,
                                  height: deviceHeight*54/790,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Padding(
                                      padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*12/790, 0, 0),
                                      child: Text(
                                        '1234567891',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(deviceWidth*8/360,deviceHeight*11/790,0,0),
                                  child: Text('PAN',
                                    style: TextStyle(
                                      color: Color(0xFF1D8D9C),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: deviceHeight*4/790),
                                  width: deviceWidth*150/360,
                                  height: deviceHeight*54/790,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Padding(
                                      padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*12/790, 0, 0),
                                      child: Text(
                                        'ABCDE0000F',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(deviceWidth*8/360,deviceHeight*11/790,0,0),
                                  child: Text('Joining Date',
                                    style: TextStyle(
                                      color: Color(0xFF1D8D9C),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: deviceHeight*4/790),
                                  width: deviceWidth*150/360,
                                  height: deviceHeight*54/790,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Padding(
                                      padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*4/790, 0, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'DD/MM/YY',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            child: IconButton(
                                                onPressed: (){

                                                },
                                                icon: Icon(Icons.calendar_month),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(deviceWidth*8/360,deviceHeight*11/790,0,0),
                                  child: Text('Aadhar Number',
                                    style: TextStyle(
                                      color: Color(0xFF1D8D9C),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: deviceHeight*4/790),
                                  width: deviceWidth*150/360,
                                  height: deviceHeight*54/790,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Padding(
                                      padding:  EdgeInsets.fromLTRB(deviceWidth*9/360, deviceHeight*12/790, 0, 0),
                                      child: Text(
                                        'xxxx-xxxx-1234',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
  void _showAlertDialog(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content:  Container(
            height: deviceHeight*397/790,
            child: Column(
              children: [
                Container(
                  width: deviceWidth*246/360,
                  height: deviceHeight*69/790,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20),bottom: Radius.zero),
                    color: Color(0xFF1D8D9C),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: deviceWidth*35/360),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                        },
                            icon: Icon(Icons.arrow_back_outlined,
                              color: Color(0xFFFFFFFF),
                            ),
                        ),
                        Text('My QR Code',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: deviceHeight*18/790,),
                    Container(
                        width: 56,
                        height: 56,
                        child: Image(image: AssetImage('assets/group75.png'))
                    ),
                    SizedBox(height: deviceHeight*5/790,),
                    Text('Dr. Vengal Rao',
                      style: TextStyle(
                        color: Color(0xFF1D8D9C),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('ENT Specialist',
                      style: TextStyle(
                        color: Color(0xFF1D8D9C),
                        fontSize: 12,
                      ),
                    ),
                    Text('(UID : 987654321)',
                      style: TextStyle(
                        color: Color(0xFF1D8D9C),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 184,
                      height: 184,
                      child: Image(
                        image: AssetImage('assets/QRCode.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
