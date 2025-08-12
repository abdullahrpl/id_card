import 'package:flutter/material.dart';

class CardScreen2 extends StatelessWidget {
  const CardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 295,
          height: 575,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xff00000025),
                spreadRadius: 5,
                blurRadius: 20,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: 295,
                height: 39,
                decoration: BoxDecoration(
                  color: Color(0xff2154AC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Image.asset('assets/images/idn.png', height: 39),
              SizedBox(height: 10),
              rawText(
                'IDN BOARDING SCHOOL',
                FontWeight.w500,
                9,
                Color(0xff2154AC),
              ),
              SizedBox(height: 40),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/photoprofile.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 195,
                height: 39,
                color: Color(0xff2154AC),
                child: rawText(
                  'Abdullah',
                  FontWeight.w600,
                  25.6,
                  Color(0xffffffff),
                ),
              ),
              SizedBox(height: 10),
              rawText('Web Developer', FontWeight.w400, 11, Color(0xff2154AC)),
              SizedBox(height: 30),
              Image.asset('assets/images/ttdgw.png'),
              SizedBox(height: 15),
              rawText(
                'ID. NO.1233456789.098',
                FontWeight.w400,
                9,
                Color(0xff2154AC),
              ),
              SizedBox(height: 10),
              Container(
                width: 295,
                height: 39,
                decoration: BoxDecoration(
                  color: Color(0xff2154AC),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text rawText(String title, FontWeight fontWeight, double size, Color color) {
    return Text(
      title,
      style: TextStyle(fontWeight: fontWeight, fontSize: size, color: color),
      textAlign: TextAlign.center,
    );
  }
}
