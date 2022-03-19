import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pract/styles/boxdec.dart';
import 'package:pract/styles/text.dart';

class Carrerbody extends StatefulWidget {
  const Carrerbody({Key? key}) : super(key: key);

  @override
  _CarrerbodyState createState() => _CarrerbodyState();
}

class _CarrerbodyState extends State<Carrerbody> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    print('abouus');
    return SingleChildScrollView(
      child: Container(
             width: wid,
         // color: Colors.black45,
          padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
          child:  Column(
            children: [
              (wid < 750)
                  ? joinus(
                  imgwidth: wid / 3 + 100,
                  header: wid / 20,
                  body: wid / 30,
                  containerwid: wid / 1.2)
                  : joinus(
                  imgwidth: wid / 4 + 100,
                  header: wid / 30,
                  body: wid / 60,
                  containerwid: wid / 3 + 100),
              spacing(heiight: 60),
              Container(
                padding: EdgeInsets.all(60),
                color: Color.fromRGBO(174, 57, 41, 1),
                width: wid,
                  child: jobsavail()),
              spacing(heiight: 40),

            ],
          ),),
    );
  }
}

SizedBox spacing({double widdth: 0, double heiight: 0}) {
  return SizedBox(
    width: widdth,
    height: heiight,
  );
}

Widget joinus(
    {double? imgwidth, double? header, double? body, double? containerwid}) {
  return
    Wrap(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      runSpacing: 20,
      spacing: 20,
      children: [
        Image.asset(
          'assets/images/careerilus.png',
          width: imgwidth,
        ),
        spacing(widdth: 30),
        Container(
          width: containerwid,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'Join Us',
              style: Txtsty.montserratSty(
                  FontWeight.bold, header!, Color.fromRGBO(174, 57, 41, 1)),
            ),
            spacing(heiight: 20),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'We at AAMPTSPN always believe in PERSISTENCE rather than INTELLECTUAL because we know INTELLECTUAL is byproduct of PERSISTENCE',
                style: Txtsty.josefinSanssty(
                    FontWeight.bold, body!, Colors.black),
              ),
              spacing(heiight: 10),
              Text(
                'We always look for a candidate who breaks a thing to know how it works,So if you are a guy who breaks everything which catches your eyes then this is your company',
                style: Txtsty.josefinSanssty(
                    FontWeight.bold, body, Colors.black),
              ),
            ]),
          ]),
        ),
      ],
    );
}

Widget jobsavail(){
  return Column(
    children: [
      Text(
        'Job opportunities',
        style: Txtsty.montserratSty(
            FontWeight.bold, 44, Colors.white),
      ),
      spacing(heiight: 60),
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          jobcont('Software Developer','Technical Support','Entry Level'),
          jobcont('Application Developer: Java & Web Technologies','Technical Support','Entry Level'),
          jobcont('UI/UX Designer','Design Support','Entry Level'),
          jobcont('Content Lead','Content Support','Entry Level'),
        ],
      )
    ],
  );


}

Widget jobcont(String a, String b , String c){
  return Container(
    padding: EdgeInsets.all(20),
    width: 390,
    height: 310,
    decoration: Boxdec.jobsboxdec(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 170,
          child: Text(
            a,
            style: Txtsty.BeVietnamProSty(
                FontWeight.w400, 25, Colors.deepPurple),
          ),
        ),

        Text(
          b,
          style: Txtsty.BeVietnamProSty(
              FontWeight.w300,22, Colors.black),
        ),
        spacing(heiight: 20),
        Text(
          c,
          style: Txtsty.BeVietnamProSty(
              FontWeight.w300,18, Colors.black),
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child:Icon(
            Icons.arrow_forward
          )
        )
      ],
    ),
  );
}





