import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pract/styles/text.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return Container(
        width: wid,
        color: Color.fromRGBO(249, 241, 230, 1),
        padding: EdgeInsets.all(50),
        child: (wid < 1300)
            ? wrapblock(WrapAlignment.start)
            : wrapblock(WrapAlignment.center));
  }

  Widget wrapblock(WrapAlignment a) {
    return Wrap(
      spacing: 50,
      runSpacing: 30,
      alignment: a,
      //runAlignment: b,
      children: [
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AAMTSPN',
                style:
                    Txtsty.BeVietnamProSty(FontWeight.bold, 20, Colors.black),
                maxLines: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Always strives to Solve real life problems with advanced and modern technologies  ',
                style:
                    Txtsty.BeVietnamProSty(FontWeight.normal, 16, Colors.black),
                maxLines: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Linkedin.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/Twitter.png',
                      height: 20, width: 20),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/Facebook.png',
                      height: 20, width: 20),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/Instagram.png',
                      height: 20, width: 20),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/Whatsapp.png',
                      height: 20, width: 20)
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Marketing',
                style:
                    Txtsty.BeVietnamProSty(FontWeight.bold, 20, Colors.black),
                maxLines: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Contact',
                style:
                    Txtsty.BeVietnamProSty(FontWeight.bold, 20, Colors.black),
                maxLines: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/maillogo.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'team@aamtspn.com',
                      style: Txtsty.BeVietnamProSty(
                          FontWeight.normal, 16, Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/diallogo.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      '9884406672',
                      style: Txtsty.BeVietnamProSty(
                          FontWeight.normal, 16, Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Text(
          'All Rights Reserved To "AAMPTSPN PRIVATE LIMITED"',
          style: Txtsty.BeVietnamProSty(
              FontWeight.bold, 20, Color.fromRGBO(107, 100, 99, 1)),
        ),
      ],
    );
  }
}
