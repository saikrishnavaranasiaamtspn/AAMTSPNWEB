import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pract/webpage/footer.dart';
import 'package:pract/loginpage/login.dart';

import 'package:pract/projects/journz.dart';
import 'package:pract/styles/boxdec.dart';
import 'package:pract/styles/text.dart';

class Hombody extends StatefulWidget {
  const Hombody({Key? key}) : super(key: key);

  @override
  _HombodyState createState() => _HombodyState();
}

class _HombodyState extends State<Hombody> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;

    if (wid < 640) {
      return Container(
        padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
        width: wid,
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/homeillus.gif',
                  width: wid / 2 + 50,
                ),
                SizedBox(
                  height: (hei - 90) / 16,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'We Create What You Want',
                    style: Txtsty.josefinSanssty(FontWeight.bold, wid / 15,
                        Color.fromRGBO(255, 126, 110, 1)),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: wid / 1.5 + 40,
                    child: Text(
                      'Welcome to AAMTSPN we create best of class product Using cutting edge technology  And a company which you can trust like your family',
                      style: Txtsty.josefinSanssty(
                          FontWeight.bold, wid / 25, Colors.black),
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 126, 110, 1),
                          padding: EdgeInsets.all(5),
                          fixedSize: Size(wid / 4, 40)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Center(
                        child: Text(
                          'Contact us',
                          style: Txtsty.nunitoSanssty(
                              FontWeight.bold, wid / 27, Colors.white),
                        ),
                      ))
                ]),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: wid,
              padding: EdgeInsets.all(10),
              color: Color.fromRGBO(174, 57, 41, 1),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  'Let’s see what we’ve been',
                  style: Txtsty.montserratSty(
                      FontWeight.bold, wid / 25, Colors.white),
                ),
                Text(
                  '"WORKING ON"',
                  style: Txtsty.montserratSty(
                      FontWeight.bold, wid / 12, Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/productilus.png',
                  width: wid / 2 + 30,
                ),
                SizedBox(
                  height: 20,
                ),
                companieswrap(),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
            Footer(),
          ],
        ),
      );
    } else if (wid < 1100) {
      return Container(
        padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
        child: Column(
          children: [
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/homeillus.gif',
                  width: (wid - 60) / 3,
                ),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'We Create What You Want',
                          style: Txtsty.josefinSanssty(FontWeight.bold,
                              wid / 20, Color.fromRGBO(255, 126, 110, 1)),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: (wid - 110) / 3 + 280,
                          child: Text(
                            'Welcome to AAMTSPN we create best of class product Using cutting edge technology  And a company which you can trust like your family',
                            style: Txtsty.josefinSanssty(
                                FontWeight.bold, wid / 40, Colors.black),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(255, 126, 110, 1),
                                padding: EdgeInsets.all(16),
                                maximumSize: Size(400, 100)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            },
                            child: Text(
                              'Contact us',
                              style: Txtsty.nunitoSanssty(
                                  FontWeight.bold, wid / 55, Colors.white),
                            ))
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: wid,
              color: Color.fromRGBO(174, 57, 41, 1),
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              'Let’s see what we’ve been',
                              style: Txtsty.montserratSty(
                                  FontWeight.bold, wid / 35, Colors.white),
                              maxLines: 1,
                            ),
                            Text(
                              '"WORKING ON"',
                              style: Txtsty.montserratSty(
                                  FontWeight.bold, wid / 20, Colors.white),
                              maxLines: 1,
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Image.asset(
                          'assets/images/productilus.png',
                          width: (wid - 60) / 3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    companieswrap(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Footer()
          ],
        ),
      );
    } else
      return Container(
        padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
        child: Column(
          children: [
            Container(
              height: hei - 90,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/homeillus.gif',
                    width: (wid - 60) / 3,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'We Create What You Want',
                            style: Txtsty.josefinSanssty(FontWeight.bold,
                                wid / 25, Color.fromRGBO(255, 126, 110, 1)),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: (wid - 110) / 3 + 280,
                            child: Text(
                              'Welcome to AAMTSPN we create best of class product Using cutting edge technology  And a company which you can trust like your family',
                              style: Txtsty.josefinSanssty(
                                  FontWeight.bold, wid / 50, Colors.black),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(255, 126, 110, 1),
                                  padding: EdgeInsets.all(16),
                                  maximumSize: Size(400, 100)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => login()));
                              },
                              child: Text(
                                'Contact us',
                                style: Txtsty.nunitoSanssty(
                                    FontWeight.bold, wid / 65, Colors.white),
                              ))
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: wid,
              color: Color.fromRGBO(174, 57, 41, 1),
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              'Let’s see what we’ve been',
                              style: Txtsty.montserratSty(
                                  FontWeight.bold, wid / 35, Colors.white),
                              maxLines: 1,
                            ),
                            Text(
                              '"WORKING ON"',
                              style: Txtsty.montserratSty(
                                  FontWeight.bold, wid / 25, Colors.white),
                              maxLines: 1,
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Image.asset(
                          'assets/images/productilus.png',
                          width: (wid - 60) / 3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    companieswrap(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Footer()
          ],
        ),
      );
  }

  Widget companyContainer(String a, String b, String c, Function() d) {
    return Container(
      width: 294,
      height: 340,
      decoration: Boxdec.homepagecontainerdec(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(225, 132, 111, 1),
              Color.fromRGBO(67, 44, 88, 1)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            height: 340 / 2,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    a,
                    height: 130,
                  ),
                  Text(
                    b,
                    style: Txtsty.josefinSanssty(
                        FontWeight.bold, 25, Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              c,
              style: Txtsty.josefinSanssty(
                  FontWeight.bold, 22, Color.fromRGBO(107, 100, 99, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: d,
              child: Text(
                'View Project',
                style: Txtsty.BeVietnamProSty(
                    FontWeight.w400, 14, Color.fromRGBO(166, 133, 226, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget companieswrap() {
    return Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 20,
      children: [
        companyContainer('assets/images/journzlogo.png', 'journz',
            'It is a platform where you can share your life lessons with others',
            () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Journz();
          }));
        }),
        companyContainer('assets/images/journzlogo.png', 'journz',
            'It is a platform where you can share your life lessons with others',
            () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Journz();
          }));
        }),
        companyContainer('assets/images/journzlogo.png', 'journz',
            'It is a platform where you can share your life lessons with others',
            () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Journz();
          }));
        }),
      ],
    );
  }
}
