import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                            'My Patients',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: deviceWidth*19/360),
                        child: Image(
                          image: AssetImage('assets/group75.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 17,vertical: deviceHeight*13/790),
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
                              size: 18,
                            ),
                          ),
                          shape: MaterialStatePropertyAll<OutlinedBorder>(
                              RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),)
                          ),
                          hintText: 'Search by Patient Name / Mobile Number',
                          hintStyle: MaterialStatePropertyAll<TextStyle>(
                              TextStyle(
                                color: Color(0xFF1D8D9C),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )
                          ),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color(0xFFFFFFFF)
                          ),
                          trailing: [
                            Icon(
                              Icons.close,
                              color: Color(0xFF1D8D9C),
                              size: 18,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: deviceHeight*20/790,),
                      SingleChildScrollView(
                        child: SizedBox(
                          height: deviceHeight*550/790,
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index){
                                return SizedBox(
                                  height: deviceHeight*114/790,
                                  child: Card(
                                    elevation: 8,
                                    color: Color(0xFFFFFFFF),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding : EdgeInsets.only(right: deviceWidth*17/360),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(deviceWidth*12/360,0,0,0),
                                                child: SizedBox(
                                                  height: 35,
                                                    width: 35,
                                                    child: Image(image: AssetImage('assets/account3.png'))),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.fromLTRB(deviceHeight*16/790,deviceWidth*13/360,0,0 ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'G. Naravani',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: deviceHeight*5/790),
                                                        Text(
                                                          'Mobile No : 12345678910',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 9,
                                                          ),
                                                        ),
                                                        SizedBox(height: deviceHeight*5/790),
                                                        Text(
                                                          'illness : Typhoid',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 9,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: deviceWidth*60/360,),
                                                  Container(
                                                    padding: EdgeInsets.fromLTRB(0,deviceHeight*37/790,0,0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'MR NO : JEH100498',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 8,
                                                          ),
                                                        ),
                                                        SizedBox(height: deviceHeight*5/790),
                                                        Text(
                                                          'Age : 30 Y / F',
                                                          style: TextStyle(
                                                            color: Color(0xFF1D8D9C),
                                                            fontSize: 9,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: deviceHeight*10/790),
                                          child: Container(
                                            width: deviceWidth*324/360,
                                            height: deviceHeight*28.55/790,

                                            decoration: BoxDecoration(
                                                color: Color(0xffE9E9E9),
                                                borderRadius: BorderRadius.all(Radius.circular(8))
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(left: deviceWidth*210/360),
                                              child: Row(
                                                children: [
                                                  Image(image: AssetImage('assets/medical-report4.png')),
                                                  SizedBox(width: deviceWidth*11/360,),
                                                  Text('Patient History',
                                                  style: TextStyle(
                                                    color: Color(0xff1D8D9C),
                                                    fontSize: 9,
                                                  ),
                                                  ),
                                                ],
                                              ),
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

