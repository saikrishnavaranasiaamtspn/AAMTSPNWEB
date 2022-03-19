import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pract/Carrer/careerbody.dart';
import 'package:pract/cubit/body_cubit.dart';
import 'package:pract/styles/boxdec.dart';
import 'package:pract/styles/text.dart';

class Teambody extends StatefulWidget {
  const Teambody({Key? key}) : super(key: key);

  @override
  _TeambodyState createState() => _TeambodyState();
}

class _TeambodyState extends State<Teambody> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
          width: wid,
          child: Column(
            // mainAxisSize: MainAxisSize.min,

            children: [
              Text(
                'Our Team',
                style: Txtsty.nunitoSanssty(
                    FontWeight.bold, 34, Color.fromRGBO(174, 57, 41, 1)),
              ),
              spacing(heiight: 80),
              Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  teammembers('assets/images/personimag.png', 'Founder/C.E.O',
                      'Tharun Bandikolla'),
                  teammembers('assets/images/personimag.png',
                      'Senior Flutter Dev', 'Navaneethan T')
                ],
              ),
              spacing(heiight: 150),
              (wid < 850)
                  ? Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      children: [
                        Image.asset(
                          'assets/images/teamilus.png',
                          width: (wid) / 2 + 50,
                        ),
                        Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            'Join Us',
                            style: Txtsty.nunitoSanssty(FontWeight.bold,
                                wid / 15, Color.fromRGBO(174, 57, 41, 1)),
                          ),
                          spacing(heiight: 10),
                          Container(
                            child: Text(
                              'We at AAMTSPN always strives to solve hard problems which is not possible only by us, we want you in our team, come join us to build the "Futuristic Ship" ',
                              style: Txtsty.josefinSanssty(
                                  FontWeight.bold, wid / 30, Colors.black),
                              maxLines: 4,
                            ),
                          ),
                          spacing(heiight: 10),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(255, 126, 110, 1),
                                  padding: EdgeInsets.all(16),
                                  maximumSize: Size(400, 100)),
                              onPressed: () {
                                BlocProvider.of<BodyCubit>(context)
                                    .callCarrer();
                              },
                              child: Text(
                                'Join us',
                                style: Txtsty.nunitoSanssty(
                                    FontWeight.bold, wid / 27, Colors.white),
                              ))
                        ]),
                      ],
                    )
                  : Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      children: [
                        Image.asset(
                          'assets/images/teamilus.png',
                          width: (wid) / 3,
                        ),
                        Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            'Join Us',
                            style: Txtsty.nunitoSanssty(FontWeight.bold, 34,
                                Color.fromRGBO(174, 57, 41, 1)),
                          ),
                          spacing(heiight: 5),
                          Container(
                            width: wid / 2,
                            child: Text(
                              'We at AAMTSPN always strives to solve hard problems which is not possible only by us, we want you in our team, come join us to build the "Futuristic Ship" ',
                              style: Txtsty.josefinSanssty(
                                  FontWeight.bold, wid / 60, Colors.black),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          spacing(heiight: 10),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(255, 126, 110, 1),
                                  padding: EdgeInsets.all(16),
                                  maximumSize: Size(400, 100)),
                              onPressed: () {
                                BlocProvider.of<BodyCubit>(context)
                                    .callCarrer();
                              },
                              child: Text(
                                'Join us',
                                style: Txtsty.nunitoSanssty(
                                    FontWeight.bold, wid / 65, Colors.white),
                              ))
                        ]),
                      ],
                    ),
            ],
          ),
          padding: EdgeInsets.fromLTRB(60, 120, 60, 60)),
    );
  }

  Container teammembers(String a, String b, String c) {
    return Container(
      width: 294,
      height: 340,
      decoration: Boxdec.Teammemboxdec(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Linkedin.png',
                height: 20,
                width: 20,
              ),
            ),
          ),
          Container(
            height: 260 - 340 / 6,
            child: Image.asset(a),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 340 / 6,
              width: 294,
              decoration: Boxdec.Teammemboxdec(),
              child: Column(
                children: [
                  Text(
                    b,
                    style:
                        Txtsty.nunitoSanssty(FontWeight.bold, 18, Colors.white),
                  ),
                  Text(
                    c,
                    style:
                        Txtsty.nunitoSanssty(FontWeight.w400, 12, Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox spacing({double widdth: 0, double heiight: 0}) {
    return SizedBox(
      width: widdth,
      height: heiight,
    );
  }
}
