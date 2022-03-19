import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pract/styles/text.dart';

import '../cubit/body_cubit.dart';
import '../loginpage/login.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  double _counter = 90;
  int x = 0;
  int x1=1;
  int x2=0;
  int x3=0;
  int x4=0;
  int x5=0;

  void _incrementCounter() {
    setState(() {
      (_counter == 90) ? _counter = 300 : _counter = 90;
      //(x==0)?x=3.14/2:x=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;

    return (wid < 800)
        ? TweenAnimationBuilder(
            duration: Duration(milliseconds: 90),
            tween: Tween<double>(begin: 90, end: _counter),
            onEnd: () {
              setState(() {
                (_counter == 300) ? x = 1 : x = 0;
              });
            },
            builder: (BuildContext context, double value, Widget? child) {
              return (x == 0)
                  ? Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                      width: wid,
                      height: value,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/aamtspnlogo.png',
                              width: 150,
                            ),
                          ),
                          Material(
                            color: Colors.white,
                            child: Container(
                              width: wid - 190,
                              height: 90,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    x = 0;
                                    _incrementCounter();
                                  },
                                  child: Image.asset(
                                    'assets/images/headermenuicon.png',
                                    width: 25,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                      width: wid,
                      height: value,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/aamtspnlogo.png',
                                  width: 150,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  x = 0;
                                  _incrementCounter();
                                },
                                child: Container(
                                  width: wid - 190,
                                  height: 90,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset(
                                      'assets/images/headermenuicon.png',
                                      width: 25,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          headercontent('Home', 20, () {
                            BlocProvider.of<BodyCubit>(context).callHome();
                            x = 0;
                            _incrementCounter();
                            print('sai');
                            setState(() {
                              x1=1;
                              x2=x4=x3=x5=0;
                            });
                          },x1),
                          SizedBox(

                            height: 2,
                          ),
                          headercontent('Careers', 20, () {
                            BlocProvider.of<BodyCubit>(context).callCarrer();
                            x = 0;
                            _incrementCounter();
                            print('sai3');
                            setState(() {
                              x2=1;
                              x1=x4=x3=x5=0;
                            });
                          },x2),
                          SizedBox(
                            height: 2,
                          ),
                          headercontent('About Us', 20, () {
                            BlocProvider.of<BodyCubit>(context).callAboutus();
                            x = 0;
                            _incrementCounter();
                            setState(() {
                              x3=1;
                              x2=x4=x1=x5=0;
                            });
                          },x3),
                          SizedBox(
                            height: 2,
                          ),
                          headercontent('Team', 20, () {
                            BlocProvider.of<BodyCubit>(context).callTeam();
                            x = 0;
                            _incrementCounter();
                            setState(() {
                              x4=1;
                              x2=x1=x3=x5=0;
                            });
                          },x4),
                          SizedBox(
                            height: 2,
                          ),
                          headercontent('Login', 20, () {
                            x = 0;
                            _incrementCounter();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          },x5),
                        ],
                      ),
                    );
            },
          )
        : Container(
            color: Colors.white,
            width: wid,
            height: 100,
            padding: EdgeInsets.fromLTRB(30, 0, 50, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/aamtspnlogo.png',
                  width: 200,
                  height: 100,
                ),
                Container(
                  width: wid - 280,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        headercontent('Home', 19, () {
                          BlocProvider.of<BodyCubit>(context).callHome();
                          print('sai');
                          setState(() {
                            x1=1;
                            x2=x4=x3=x5=0;
                          });
                        },x1),
                        SizedBox(
                          width: 40,
                        ),
                        headercontent('Careers', 19, () {
                          BlocProvider.of<BodyCubit>(context).callCarrer();
                          print('sai2');
                          setState(() {
                            x2=1;
                            x1=x4=x3=x5=0;
                          });
                        },x2),
                        SizedBox(
                          width: 40,
                        ),
                        headercontent('About Us', 19, () {
                          BlocProvider.of<BodyCubit>(context).callAboutus();
                          print('sai3');
                          setState(() {
                            x3=1;
                            x1=x2=x4=x5=0;
                          });
                        },x3),
                        SizedBox(
                          width: 40,
                        ),
                        headercontent('Team', 19, () {
                          BlocProvider.of<BodyCubit>(context).callTeam();
                          print('sai4');
                          setState(() {
                            x4=1;
                            x1=x2=x3=x5=0;
                          });
                        },x4),
                        SizedBox(
                          width: 40,
                        ),
                        headercontent('Login', 19, () {
                          print('sai5');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));

                        },x5),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Widget headercontent(String a, double b, Function() c,int d) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: c,
            child: Text(
              a,
              style: Txtsty.josefinSanssty(FontWeight.bold, b, Colors.black),
            ),
          ),
          (d==1)?
          Container(
            width: 60,
            child: Divider(
              thickness: 2,
              color: Colors.red,
              height: 0,
            ),
          ):Container(),
        ],
      ),
    );
  }
}
