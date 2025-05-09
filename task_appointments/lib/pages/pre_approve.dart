import 'package:flutter/material.dart';

class PreApprove extends StatefulWidget {
  const PreApprove({super.key});

  @override
  State<PreApprove> createState() => _PreApproveState();
}

class _PreApproveState extends State<PreApprove> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var h = 844/deviceHeight;
    var w = 390/deviceWidth;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: deviceWidth,
            height: 206*h,
            color: Color(0xFF2C333F),
            child: Image(
                image: AssetImage('assets/group8.png')
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

