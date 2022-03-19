import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pract/styles/text.dart';

class Aboutusbody extends StatefulWidget {
  const Aboutusbody({Key? key}) : super(key: key);

  @override
  _AboutusbodyState createState() => _AboutusbodyState();
}

class _AboutusbodyState extends State<Aboutusbody> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    print('abouus');
    return SingleChildScrollView(
      child: Container(
          width: wid,
          padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
          child: Column(
            children: [
              (wid < 750)
                  ? aboutus(
                      imgwidth: wid / 2 + 100,
                      header: wid / 20,
                      body: wid / 30,
                      containerwid: wid / 1.2)
                  : aboutus(
                      imgwidth: wid / 3 + 100,
                      header: wid / 25,
                      body: wid / 60,
                      containerwid: wid / 3 + 100),
              spacing(heiight: 50),
              (wid < 750)
                  ? howwework(
                      imgwidth: wid / 2 + 100,
                      header: wid / 20,
                      body: wid / 30,
                      containerwid: wid / 1.2)
                  : howwework(
                      imgwidth: wid / 3 + 100,
                      header: wid / 30,
                      body: wid / 60,
                      containerwid: wid / 3 + 100),
              (wid < 750)
                  ? ourgoals(
                      imgwidth: wid / 2 + 100,
                      header: wid / 20,
                      body: wid / 30,
                      containerwid: wid / 1.2)
                  : ourgoals(
                      imgwidth: wid / 3 + 100,
                      header: wid / 25,
                      body: wid / 60,
                      containerwid: wid / 3 + 100),
              spacing(heiight: 50),
            ],
          )),
    );
  }

  SizedBox spacing({double widdth: 0, double heiight: 0}) {
    return SizedBox(
      width: widdth,
      height: heiight,
    );
  }

  Widget aboutus(
      {double? imgwidth, double? header, double? body, double? containerwid}) {
    return Builder(
      builder: (BuildContext context) {

        return Wrap(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Image.asset(
              'assets/images/aboutusilus.png',
              width: imgwidth,
            ),
            spacing(widdth: 30),
            Container(
              width: containerwid,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  'About Us',
                  style: Txtsty.montserratSty(
                      FontWeight.bold, header!, Color.fromRGBO(174, 57, 41, 1)),
                ),
                spacing(heiight: 10),
                Container(
                  child: Text(
                    'We are tech geeks and we flow close to the people to find their problems and we put our blood to solve those using most advanced and modern technologies',
                    style: Txtsty.josefinSanssty(
                        FontWeight.bold, body!, Colors.black),
                    maxLines: 4,
                  ),
                ),
              ]),
            ),
          ],
        );
      },
    );
  }

  Widget ourgoals(
      {double? imgwidth, double? header, double? body, double? containerwid}) {
    return Builder(
      builder: (BuildContext context) {
        return Wrap(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Image.asset(
              'assets/images/goalsilus.png',
              width: imgwidth,
            ),
            spacing(widdth: 30),
            Container(
              width: containerwid,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  'Our Goals',
                  style: Txtsty.montserratSty(
                      FontWeight.bold, header!, Color.fromRGBO(174, 57, 41, 1)),
                ),
                spacing(heiight: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    '->Want to create a world where everyone is able to fight for their rights by creating products which empowers each and everyone',
                    style: Txtsty.josefinSanssty(
                        FontWeight.bold, body!, Colors.black),
                  ),
                  spacing(heiight: 10),
                  Text(
                    '->We want you in our team to achieve 1st one',
                    style: Txtsty.josefinSanssty(
                        FontWeight.bold, body, Colors.black),
                  ),
                ]),
              ]),
            ),
          ],
        );
      },
    );
  }

  Widget howwework(
      {double? imgwidth, double? header, double? body, double? containerwid}) {
    return Builder(
      builder: (BuildContext context) {
        var wid = MediaQuery.of(context).size.width;
        return Container(
          padding: EdgeInsets.all(50),
          color: Color.fromRGBO(174, 57, 41, 1),
          width: wid,
          child: Wrap(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: containerwid,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    'How AAMPTSPN Works',
                    style: Txtsty.montserratSty(
                        FontWeight.bold, header!, Colors.black54),
                  ),
                  spacing(heiight: 20),
                  Column(children: [
                    Text(
                      '->We at AAMPTSPN always believe in PERSISTENCE rather than INTELLECTUAL because we know INTELLECTUAL is byproduct of PERSISTENCE',
                      style: Txtsty.josefinSanssty(
                          FontWeight.bold, body!, Colors.white),
                    ),
                    spacing(heiight: 10),
                    Text(
                      '->We always look for a candidate who breaks a thing to know how it works,So if you are a guy who breaks everything which catches your eyes then this is your company',
                      style: Txtsty.josefinSanssty(
                          FontWeight.bold, body, Colors.white),
                    ),
                  ]),
                ]),
              ),
              spacing(widdth: 50),
              Image.asset(
                'assets/images/howweworkilus.png',
                width: (wid) / 3 + 100,
              ),
            ],
          ),
        );
      },
    );
  }
}
